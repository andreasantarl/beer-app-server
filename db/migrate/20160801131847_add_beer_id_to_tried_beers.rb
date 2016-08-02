class AddBeerIdToTriedBeers < ActiveRecord::Migration
  def change
    add_reference :tried_beers, :beer, index: true, foreign_key: true, null: false
  end
end
