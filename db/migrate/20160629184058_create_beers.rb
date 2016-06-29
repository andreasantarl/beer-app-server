class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.string :beer_name, null: false
      t.string :company_name
      t.string :beer_style
      t.decimal :abv, precision: 3, scale: 1
      t.string :notes
      t.integer :rating
      t.boolean :drink_again

      t.timestamps null: false
    end
  end
end
