class CreateCommentsOfComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments_of_comments do |t|
      t.datetime :date
      t.text :comment
      t.references :account, foreign_key: true
      t.references :comment, foreign_key: true

      t.timestamps
    end
  end
end
