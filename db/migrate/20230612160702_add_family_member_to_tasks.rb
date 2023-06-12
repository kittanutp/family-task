class AddFamilyMemberToTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks, :family_member
  end
end
