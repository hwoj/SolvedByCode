class ChangeDescriptionToLo < ActiveRecord::Migration[5.1]
  def change
    change_column :companies, :description, :oid
  end
end
