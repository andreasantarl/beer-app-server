class AddProfileIdToTriedBeers < ActiveRecord::Migration
  def change
    add_reference :tried_beers, :profile, index: true, foreign_key: true, null: false
  end
end
