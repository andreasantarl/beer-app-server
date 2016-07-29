class AddPrivacyToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :make_private, :boolean
  end
end
