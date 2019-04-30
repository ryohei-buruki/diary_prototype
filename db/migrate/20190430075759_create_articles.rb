class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.datetime :date
      t.text :article
      t.references :account, foreign_key: true
      t.references :diary, foreign_key: true

      t.timestamps
    end
  end
end
