class DashboardController < ApplicationController
  before_filter :require_login

  def index
    # Check for user account creation date

    # save week count to var

  end

  def show

  end

  def download 
    send_file "#{Rails.root}/public/files/" + params[:file_name]
  end

  private

    def require_login
      unless user_signed_in?
        redirect_to new_user_session_path
      end
    end
end
