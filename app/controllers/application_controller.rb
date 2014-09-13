class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :authorize
  
  def authorize
    if current_user.nil?
      redirect_to login_path, :alert => "You need to log in first!"
    end
  end
  
  
  #if there is a value in session user_id, give back the user who's id is that session id
  #this method is available in every controller
  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end
  #this allows the current_user method to be available in all the views
  helper_method :current_user
end