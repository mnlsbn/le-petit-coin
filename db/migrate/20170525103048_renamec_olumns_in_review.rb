class RenamecOlumnsInReview < ActiveRecord::Migration[5.0]
  def change
    remove_column :reviews, :wc_id
    remove_column :reviews, :user_id
    add_reference :reviews, :booking, foreign_key: true
  end
end
