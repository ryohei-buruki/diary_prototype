class CreateDiaries < ActiveRecord::Migration[5.2]
  def change
    create_table :diaries do |t|
      t.datetime :date
      t.references :account, foreign_key: true

      t.timestamps
    end
  end
end
