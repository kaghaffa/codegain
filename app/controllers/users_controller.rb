class UsersController < ApplicationController
  def index

  end

  def edit
    @user = User.find(params[:id])
  end

  def show
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(params[:user])
      flash[:success] = "Profile Updated."
      redirect_to edit_user_path(@user.id)
    else
      flash[:error] = "Something went wrong. Please double check your information."
      redirect_to edit_user_path(@user.id)
    end
  end
end
