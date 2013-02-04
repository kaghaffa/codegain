class NotificationsMailer < ActionMailer::Base

  default :from => "kayvon@codegain.us"
  default :to => "kayvon@codegain.us"

  def new_message(message)
    @message = message
    mail(:subject => "[codegain] #{message.subject}  |  #{Time.now.to_s[0..18]}")
  end

end