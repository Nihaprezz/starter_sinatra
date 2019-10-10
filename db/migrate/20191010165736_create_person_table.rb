class CreatePersonTable < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name
      t.integer :phone_number
      t.integer :room_number
    end
  end
end
