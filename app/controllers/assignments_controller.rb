class AssignmentsController < ApplicationController

  def edit
    @assignment = Assignment.find(params[:id])
  end

  def update
    assignment = Assignment.find(params[:id])
    assignment.user_id = params[:user_id]

    if assignment.valid?
      assignment.update_attributes(params[:assignment])
      flash[:notice] = "Assignment #{assignment.name} updated"      
      redirect_to(student_path(params[:user_id]))
    else
      flash.now.alert = "Please fill all fields"
      redirect_to student_path(params[:user_id])
    end
  end

  def create
    assignment = Assignment.new(params[:assignment])
    assignment.user_id = params[:user_id]

    if assignment.valid?
      assignment.save
      flash[:notice] = "New assignment: #{assignment.name} created"
      redirect_to(student_path(params[:user_id]))
    else
      flash.now.alert = "Please fill all fields"
      redirect_to student_path(params[:user_id])
    end
  end

  def destroy
    assignment = Assignment.find(params[:id])
    assignment.destroy
    flash[:notice] = "Assignment \"#{assignment.name}\" deleted"
    redirect_to student_path(assignment.user_id)
  end
end