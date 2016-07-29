class AddPreferencesFavoritesToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :preferences, :string
    add_column :profiles, :favorites, :string
  end
end
