class AddUserIdToReviews < ActiveRecord::Migration[7.1]
  def change
    add_column :reviews, :user_id, :integer
    add_index :reviews, :user_id
  end
end
