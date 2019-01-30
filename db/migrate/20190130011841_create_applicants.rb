class CreateApplicants < ActiveRecord::Migration[5.1]
  def change
    create_table :applicants do |t|
      t.string :username
      t.string :email
      t.string :resume
    end
  end
end
