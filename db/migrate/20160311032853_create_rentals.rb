class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :item_name
      t.integer :price
      t.string :condition
      t.boolean :available
    end
  end
end
