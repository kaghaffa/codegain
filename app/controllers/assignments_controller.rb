class AssignmentsController < ApplicationController

  def edit
    @assignment = Assignment.find(params[:id])
  end

  def update
    assignment = Assignment.find(params[:id])
    assignment.user_id = params[:user_id]

    if assignment.valid?
      assignment.update_attributes(params[:assignment])
      redirect_to(student_path(params[:user_id], :notice => "Assignment Score Created!"))
    else
      flash.now.alert = "Please fill all fields"
      redirect_to student_path(params[:user_id])
    end
  end

  def create
    @assignment = Assignment.new(params[:assignment])
    @assignment.user_id = params[:user_id]

    if @assignment.valid?
      @assignment.save
      redirect_to(student_path(params[:user_id], :notice => "Assignment Score Created!"))
    else
      flash.now.alert = "Please fill all fields"
      redirect_to student_path(params[:user_id])
    end
  end
end