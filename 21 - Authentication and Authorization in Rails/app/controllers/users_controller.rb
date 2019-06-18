class UsersController < ApplicationController
  before_action :authorized
  skip_before_action :authorized, only: [:new, :create]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # User created! Let's set up their session
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @errors = @user.errors.full_messages
      render :new
    end
  end

  def show
    # authorized
    @user = User.find_by(username: params[:username])
    @current_user = User.find_by(id: session[:user_id])
    if @current_user.id != @user.id
      redirect_to user_path(@current_user)
    end
  end

  private

  def authorized
    if !current_user
      redirect_to new_user_path
    end
  end

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
