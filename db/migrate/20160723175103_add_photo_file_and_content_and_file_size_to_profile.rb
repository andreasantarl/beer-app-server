class AddPhotoFileAndContentAndFileSizeToProfile < ActiveRecord::Migration
  def change
    add_column :profiles, :photo_file_name, :string
    add_column :profiles, :photo_content_type, :string
    add_column :profiles, :photo_file_size, :integer
  end
end
