class CreateSkiTable < ActiveRecord::Migration[5.2]
  def change
    create_table :skis do |t|
      t.string :brand
      t.string :color
      t.integer :boots_size
    end
  end
end
