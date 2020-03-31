class AddLikeToLikes < ActiveRecord::Migration[6.0]
  def change
    add_column :likes, :like, :boolean
  end
end
