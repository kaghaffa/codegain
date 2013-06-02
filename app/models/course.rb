class Course < ActiveRecord::Base
  attr_accessible :name

  has_many :quizzes
  has_many :assignments
  has_many :users, :through => :enrollments


  def get_names
    courses = Course.all
    courses.each do |course|
      courseNames << course.name
    end
  end

  def get_ids
    courses = Course.all
    courses.each do |course|
      courseNames << course.id
    end
  end
end
