class RemoveProfileIdFromBeer < ActiveRecord::Migration
  def change
    remove_column :beers, :profile_id, :numeric
  end
end
