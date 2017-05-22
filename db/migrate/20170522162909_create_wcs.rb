class CreateWcs < ActiveRecord::Migration[5.0]
  def change
    create_table :wcs do |t|
      t.string :name
      t.string :description
      t.string :address
      t.boolean :availability
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
