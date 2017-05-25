class AddPhotoToWcs < ActiveRecord::Migration[5.0]
  def change
    add_column :wcs, :photo, :string
  end
end
