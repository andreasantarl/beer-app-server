class AddPhotoFileAndContentAndFileSizeToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :photo_file_name, :string
    add_column :beers, :photo_content_type, :string
    add_column :beers, :photo_file_size, :integer
  end
end
