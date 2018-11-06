class CreateJobs < ActiveRecord::Migration[5.1]
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :description
      t.string :company
      t.string :location
      t.string :technologies, array: true
      t.string :field
      t.string :pay
      t.string :job_type
      t.string :experience_level
      t.timestamps

    end
  end
end
