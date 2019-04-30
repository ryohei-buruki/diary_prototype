class RenameMailColumnToEmail < ActiveRecord::Migration[5.2]
  def change
    rename_column :accounts, :mail, :email
  end
end
