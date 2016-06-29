class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :username, null: false
      t.string :biography
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
