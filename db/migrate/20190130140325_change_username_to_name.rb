class ChangeUsernameToName < ActiveRecord::Migration[5.1]
  def change
    rename_column :applicants, :username, :name
  end
end
