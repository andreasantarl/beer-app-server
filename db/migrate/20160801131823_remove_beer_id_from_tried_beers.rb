class RemoveBeerIdFromTriedBeers < ActiveRecord::Migration
  def change
    remove_column :tried_beers, :beer_id, :integer
  end
end
