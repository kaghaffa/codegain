class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create 
    @message = Message.new(params[:message])
    @message.interests = params[:interests]
    @message.interests ||= []

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Message sent. We will respond within 24 hours!")
    else
      flash.now.alert = "Please fill all fields"
      redirect_to root_path
    end
  end

end