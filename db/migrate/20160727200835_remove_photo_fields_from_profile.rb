class RemovePhotoFieldsFromProfile < ActiveRecord::Migration
  def change
    remove_column :profiles, :photo_file_name
    remove_column :profiles, :photo_content_type
    remove_column :profiles, :photo_file_size
  end
end
