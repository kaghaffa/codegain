class AddDisplayNameToUser < ActiveRecord::Migration
  def change
    add_column :users, :display_name, :string, :null => true
  end
end
