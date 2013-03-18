class DashboardController < ApplicationController
  def index
    # Check for user account creation date

    # save week count to var

  end

  def show

  end

  def approval
    if params[:approved] == "false"
      @users = User.find_all_by_approved(false)
    else
      @users = User.all
    end
  end

  def download
    send_file "#{Rails.root}/public/files/" + params[:file_name]
  end
end
