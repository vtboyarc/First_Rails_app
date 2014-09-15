class LoginsController < ApplicationController
   skip_before_filter :authorize, :only => [:new, :create]
  def new
  end
  
  def create
    user = User.find_by_email(params[:email])
    
      if user && user.authenticate(params[:password]) #if user && is to keep from being nil
        session[:user_id] = user.id
        redirect_to articles_path
      else
        raise "Invalid login."
      end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
