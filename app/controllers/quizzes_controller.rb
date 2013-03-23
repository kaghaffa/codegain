class QuizzesController < ApplicationController

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def create
    @quiz = Quiz.new(params[:quiz])
    @quiz.user_id = params[:user_id]

    if @quiz.valid?
      @quiz.save
      redirect_to(student_path(params[:user_id], :notice => "Quiz Score Created!"))
    else
      flash.now.alert = "Please fill all fields"
      redirect_to student_path(params[:user_id])
    end
  end

  def update
    quiz = Quiz.find(params[:id])
    quiz.user_id = params[:user_id]

    if quiz.valid?
      quiz.update_attributes(params[:quiz])
      redirect_to(student_path(params[:user_id], :notice => "Quiz Score Created!"))
    else
      flash.now.alert = "Please fill all fields"
      redirect_to student_path(params[:user_id])
    end
  end

end