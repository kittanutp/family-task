class AddForeignKeyToTask < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :tasks, :family_members
  end
end
