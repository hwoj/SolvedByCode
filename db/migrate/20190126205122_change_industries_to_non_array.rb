class ChangeIndustriesToNonArray < ActiveRecord::Migration[5.1]
  def change
    change_column :companies, :industries, :string
  end
end
