class QuizzesController < ApplicationController

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def create
    @quiz = Quiz.new(params[:quiz])
    @quiz.user_id = params[:user_id]

    if @quiz.valid?
      @quiz.save
      flash[:notice] = "New quiz: #{@quiz.name} created"
      redirect_to(student_path(params[:user_id]))
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
      flash[:notice] = "Quiz #{quiz.name} updated"
      redirect_to(student_path(params[:user_id]))
    else
      flash.now.alert = "Please fill all fields"
      redirect_to student_path(params[:user_id])
    end
  end

  def destroy
    quiz = Quiz.find(params[:id])
    quiz.destroy
    flash[:notice] = "Quiz \"#{quiz.name}\" deleted"
    redirect_to student_path(quiz.user_id)
  end
end