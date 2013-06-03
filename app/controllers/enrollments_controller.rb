class EnrollmentsController < ApplicationController

  def index
    @students = User.all 
  end

  def edit
    @enrollment = Enrollment.find(params[:id])
  end

  def new
    @enrollment = Enrollment.new
    @enrollment.user_id = params[:student_param]
  end

  def create
    enrollment = Enrollment.new
    enrollment.course_id = params[:enrollment][:course_id]
    enrollment.user_id = params[:user_id]
    enrollment.active = true

    if enrollment.valid?
      enrollment.save(enrollment)
      flash[:notice] = "#{enrollment.enrolled_user.first_name} is enrolled in #{enrollment.enrolled_course.name}"
      redirect_to(student_path(params[:user_id]))
    else
      flash.now.alert = "Please fill all fields"
      redirect_to student_path(params[:user_id])
    end
  end

  def update 
    enrollment = Enrollment.find(params[:id])

    if enrollment.valid?
      enrollment.update_attributes(params[:enrollment])
      flash[:notice] = "#{enrollment.enrolled_user.first_name} is enrolled in #{enrollment.enrolled_course.name}"
      redirect_to(student_path(params[:user_id]))
    else
      flash.now.alert = "Please fill all fields"
      redirect_to student_path(params[:user_id])
    end
  end

end
