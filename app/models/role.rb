class Role < ActiveRecord::Base
  attr_accessible :role_id, :role_name

  belongs_to :user_role
end
