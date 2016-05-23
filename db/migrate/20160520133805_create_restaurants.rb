class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :description
      t.decimal :rating, precision: 2, scale: 1
      t.string :address

      t.timestamps null: false
    end
  end
end
