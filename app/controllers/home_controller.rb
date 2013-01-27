class HomeController < ApplicationController
  def new
    @message = Message.new
  end

  # GET /home
  def index
    @message = Message.new
  end

end