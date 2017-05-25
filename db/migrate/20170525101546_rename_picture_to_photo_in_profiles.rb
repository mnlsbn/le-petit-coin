class RenamePictureToPhotoInProfiles < ActiveRecord::Migration[5.0]
  def up
    rename_column :profiles, :picture, :photo
  end

  def down
    rename_column :profiles, :photo, :picture
  end
end
