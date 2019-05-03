class AddReferenceToArticle < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :item, index: true, foreign_key: true
  end
end
