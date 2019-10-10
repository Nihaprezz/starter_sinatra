class CreateRentalTable < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.integer :person_id
      t.integer :ski_id
    end
  end
end
