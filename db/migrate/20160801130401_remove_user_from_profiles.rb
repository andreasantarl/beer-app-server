class RemoveUserFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :user_id, :integer
  end
end
