class Ski < ActiveRecord::Base
    has_many :rentals
    has_many :people, through: :rentals
end
