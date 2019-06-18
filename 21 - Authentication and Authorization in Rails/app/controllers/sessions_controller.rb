class SessionsController < ApplicationController
  def destroy
    puts "*******************************"
    puts "YEAH"
    session.delete(:user_id)
    redirect_to new_user_path
  end

  def new
  end

  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      @errors = ["invalid credentials"]
      render :new
    end

  end
end
