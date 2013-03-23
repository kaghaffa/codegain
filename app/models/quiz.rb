class Quiz < ActiveRecord::Base
  attr_accessible :course_id, :date, :name, :score, :user_id

  belongs_to :user
  belongs_to :course
end
