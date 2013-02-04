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
      redirect_to(root_path, :notice => "Message was successfully sent.")
    else
      flash.now.alert = "Please fill all fields"
      redirect_to messages_path
    end
  end

end