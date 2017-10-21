class AddDetailsToRestaurant < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :ratings, :text
  end
end
