class RenamePasswordDigistColumnToPasswordDigest < ActiveRecord::Migration[5.2]
  def change
    rename_column :accounts, :password_digist, :password_digest
  end
end
