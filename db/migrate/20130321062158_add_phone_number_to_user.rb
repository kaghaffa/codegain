class AddPhoneNumberToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :phone_number, :integer, :null => true
  end

  def self.down
    remove_column :users, :first_number, :integer
  end
end
