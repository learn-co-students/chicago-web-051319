class ApplicationController < ActionController::Base
  helper_method :current_user, :logged_in?, :authorized

  def current_user
    # Returns the currently logged in user if one exists, nil otherwise
    if session[:user_id]
      return User.find_by(id: session[:user_id])
    end
  end

  def logged_in?
    !!current_user
  end

  def authorized
    if !current_user
      redirect_to new_user_path
    end
  end
end
