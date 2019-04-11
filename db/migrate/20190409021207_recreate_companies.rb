class ChangeDescriptionToLo < ActiveRecord::Migration[5.1]

  def change
    create_table :companies do |t|
      t.string :companyname
      t.string :email
      t.string :password_digest
      t.string :location
      t.string :website
      t.string :size
      t.string :benefits, array: true
      t.string :industries, array: true
      t.
      t.timestamps
    end
  end
end
