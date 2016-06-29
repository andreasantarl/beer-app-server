class CreateTriedBeers < ActiveRecord::Migration
  def change
    create_table :tried_beers do |t|
      t.references :profile, index: true, foreign_key: true
      t.references :beer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
