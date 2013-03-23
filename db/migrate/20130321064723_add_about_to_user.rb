class AddAboutToUser < ActiveRecord::Migration
  def change
    add_column :users, :about, :text, :null => true
  end
end
