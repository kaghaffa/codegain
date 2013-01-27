class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@youdomain.dev"
  default :to => "kaghaffa@gmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[codegain] #{message.subject}  |  #{Time.now.to_s[0..18]}")
  end

end