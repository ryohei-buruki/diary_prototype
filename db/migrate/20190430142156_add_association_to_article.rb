class AddAssociationToArticle < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :items, index: true
  end
end
