class Enrollment < ActiveRecord::Base
  attr_accessible :course_id, :user_id, :active

  belongs_to :user
  belongs_to :course
end