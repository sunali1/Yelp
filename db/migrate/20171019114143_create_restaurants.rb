class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :location
      t.text :description

      t.timestamps
    end
  end
end
