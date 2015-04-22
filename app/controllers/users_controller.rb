class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all
  end

  def show
    if params[:id] == "login"
      @user = current_user
    else
      @user = User.find(params[:id])
    end
    unless @user == current_user
      redirect_to :back, :alert => "Access denied."
    end
  end

end
