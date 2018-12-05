class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :companyname
      t.string :email
      t.timestamps
    end
  end
end
