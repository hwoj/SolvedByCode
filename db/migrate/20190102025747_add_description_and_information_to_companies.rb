class AddDescriptionAndInformationToCompanies < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :description, :text
    add_column :companies, :location, :string
    add_column :companies, :website, :string
    add_column :companies, :size, :string
    add_column :companies, :industries, :string, array: true
    add_column :companies, :benefits, :string, array: true
  end
end
