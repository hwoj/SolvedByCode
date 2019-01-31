class RemoveUsernameFromApplicants < ActiveRecord::Migration[5.1]
  def change
    remove_column :applicants, :username
  end
end
