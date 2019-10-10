require "pry"

class PersonController < Sinatra::Base
    set :views, "app/views/person"

    get '/people' do
        @people = Person.all

        erb :index
    end

    get '/people/new' do
        erb :new
    end

    post '/people' do
         
        person = Person.find_or_create_by(name: params[:name], phone_number: params[:phone_number], room_number: params[:room_number])
        rental = Rental.find_or_create_by(person_id: person.id, ski_id: params[:ski])

        # Rental.find_or_create_by(person_id: person1.id, ski_id: ski1.id)
        redirect "/people/#{person.id}"
    end

    get '/people/:id' do
        @person = Person.find(params[:id])

        erb :show
    end
end
