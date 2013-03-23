class Course < ActiveRecord::Base
  attr_accessible :name

  has_many :quizzes
  has_many :assignments
  has_many :users, :through => :enrollments
end
