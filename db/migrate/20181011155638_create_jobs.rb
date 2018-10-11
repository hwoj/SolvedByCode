class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :company
      t.string :technologies, array: true
      t.string :field, array: true
      t.integer :pay
      t.timestamps

    end
  end
end
