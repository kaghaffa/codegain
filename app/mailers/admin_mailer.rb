class AdminMailer < ActionMailer::Base
  default :to => User.where("admin = ?", true).map(&:email),
          :from => "david@codegain.net"

  def new_user_waiting_for_approval(user)
    @user = user
    mail(:subject => "New User Awaiting Approval: #{@user.email}")
  end
end
