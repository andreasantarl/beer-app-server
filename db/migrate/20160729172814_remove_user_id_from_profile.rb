class RemoveUserIdFromProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :user_id, :numeric
  end
end
