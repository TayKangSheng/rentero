class ApplicationController < ActionController::Base
  helper_method :current_user

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    else
      @current_user ||= nil
    end
  end

  def authenticate_user
    if current_user
    else
      flash[:alert] = "you need to be signed in"
      redirect_to root_url
    end
  end
end
