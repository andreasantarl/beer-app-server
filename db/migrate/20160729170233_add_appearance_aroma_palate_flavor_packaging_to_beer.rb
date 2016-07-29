class AddAppearanceAromaPalateFlavorPackagingToBeer < ActiveRecord::Migration
  def change
    add_column :beers, :appearance, :string
    add_column :beers, :aroma, :string
    add_column :beers, :palate, :string
    add_column :beers, :flavor, :string
    add_column :beers, :packaging, :string
  end
end
