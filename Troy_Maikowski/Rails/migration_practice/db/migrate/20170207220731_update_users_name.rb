class UpdateUsersName < ActiveRecord::Migration[5.0]
  def change
    rename_table :contents, :users
  end
end
