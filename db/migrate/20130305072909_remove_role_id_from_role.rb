class RemoveRoleIdFromRole < ActiveRecord::Migration
  def up
    remove_column :roles, :role_id
  end

  def down
    add_column :roles, :role_id, :integer
  end
end
