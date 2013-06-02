class StudentsController < ApplicationController

  def create

  end

  def index
    @students = User.all
  end

  def show
    @quiz = Quiz.new
    @assignment = Assignment.new

    student = User.find(params[:id]) 
    quizzes = Quiz.find_all_by_user_id(student.id)
    assignments = Assignment.find_all_by_user_id(student.id)

    quizzes |= []
    assignments |= []

    @studentInfo = { :student => student, :quizzes => quizzes,
                     :assignments => assignments }
  end

  def new
  end
end
