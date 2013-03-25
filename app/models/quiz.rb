class Quiz < ActiveRecord::Base
  attr_accessible :course_id, :date, :name, :score, :user_id

  belongs_to :user
  belongs_to :course

  def get_course_name
    Course.find(self.course_id).name
  end
end
