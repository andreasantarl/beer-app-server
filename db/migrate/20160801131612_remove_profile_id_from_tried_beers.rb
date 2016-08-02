class RemoveProfileIdFromTriedBeers < ActiveRecord::Migration
  def change
    remove_column :tried_beers, :profile_id, :integer
  end
end
