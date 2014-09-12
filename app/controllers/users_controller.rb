class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    
    if @user.save
      redirect_to articles_path
    else
      raise "user wasn't saved"
    end
  end
end
