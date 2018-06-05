class RenameColumnPicturesToUser < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :pictures, :picture
  end
end
