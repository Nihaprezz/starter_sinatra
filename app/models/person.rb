class Person < ActiveRecord::Base
    has_many :rentals
    has_many :skis, through: :rentals
end
