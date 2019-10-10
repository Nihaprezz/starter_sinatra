class Rental < ActiveRecord::Base
    belongs_to :ski
    belongs_to :person
end
