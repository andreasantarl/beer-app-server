class AddProfileIdToBeer < ActiveRecord::Migration
  def change
    add_reference :beers, :profile, index: true, foreign_key: true
  end
end
