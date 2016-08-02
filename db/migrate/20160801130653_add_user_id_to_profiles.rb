class AddUserIdToProfiles < ActiveRecord::Migration
  def change
    add_reference :profiles, :user, index: true, foreign_key: true, null: false
  end
end
