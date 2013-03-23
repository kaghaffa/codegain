class ChangePhoneSizeInUsers < ActiveRecord::Migration
  def up
    change_column :users, :phone_number, :int, :length => 12
  end

  def down
  end
end
