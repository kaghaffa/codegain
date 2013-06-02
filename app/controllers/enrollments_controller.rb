class EnrollmentsController < ApplicationController

  def index

    @enrollment = Enrollment.new
    @students = User.all
    @courses = Course.all
  end


end
