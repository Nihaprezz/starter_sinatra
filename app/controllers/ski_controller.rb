require "pry"
class SkiController < Sinatra::Base
    set :views, "app/views/ski"

    get '/skis' do 
        @skis = Ski.all

        erb :index
    end

    get '/skis/new' do

        erb :new
    end

    get '/skis/:id' do
        
        @ski = Ski.find(params[:id])

        erb :show
    end

    post '/skis' do 
        @new_ski = Ski.find_or_create_by(brand: params[:brand], color: params[:color], boots_size: params[:boots_size])

        redirect "/skis/#{@new_ski.id}"
    end

    get '/rentals' do 
        @rentals = Rental.all

        erb :rentals
    end


end
