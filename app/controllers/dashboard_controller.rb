class DashboardController < ApplicationController
  before_filter :require_login
  before_filter :week_of_user

  def index
    # Check for user account creation date

    # save week count to var

  end

  def show

  end

  def roster 
    @students = User.all
  end

  def approval
    if params[:approved] == "false"
      @users = User.find_all_by_approved(false)
    else
      @users = User.all
    end
  end

  def download
    send_file "#{Rails.root}/private/class_materials/" + params[:file_name]
  end

  private

    def require_login
      unless user_signed_in?
#        redirect_to new_user_session_path
      end
    end

    def week_of_user

    end
end
