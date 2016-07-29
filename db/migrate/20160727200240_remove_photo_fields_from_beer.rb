class RemovePhotoFieldsFromBeer < ActiveRecord::Migration
  def change
    remove_column :beers, :photo_file_name
    remove_column :beers, :photo_content_type
    remove_column :beers, :photo_file_size
  end
end
