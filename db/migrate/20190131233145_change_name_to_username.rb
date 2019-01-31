class ChangeNameToUsername < ActiveRecord::Migration[5.1]
  def change
    add_column :applicants, :username, :string
  end
end
