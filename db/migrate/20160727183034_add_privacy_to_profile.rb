class AddPrivacyToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :profile_private, :boolean
  end
end
