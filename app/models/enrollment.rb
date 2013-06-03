class Enrollment < ActiveRecord::Base
  attr_accessible :course_id, :user_id, :active

  belongs_to :user
  belongs_to :course


  def enrolled_user
    User.find_by_id(self.user_id)
  end

  def enrolled_course
    Course.find_by_id(self.course_id)
  end
end
