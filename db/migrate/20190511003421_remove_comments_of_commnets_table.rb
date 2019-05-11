class RemoveCommentsOfCommnetsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :comments_of_comments
  end
end
