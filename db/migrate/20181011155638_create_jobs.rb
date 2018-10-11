class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :company
      t.timestamps
      t.string :technologies, array: true
      t.string :extra_knowledge, array: true
    end
  end
end
