class AddCoordinatesToWcs < ActiveRecord::Migration[5.0]
  def change
    add_column :wcs, :latitude, :float
    add_column :wcs, :longitude, :float
  end
end
