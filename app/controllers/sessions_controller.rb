class SessionsController < ApplicationController
  def new
  end

  def create
      user = User.find_by(email: params[:session][:email].downcase)
      session[:user_id]=user.id
      redirect_to users_path(user)
  end

  def destroy
      session[:user_id]=nil
      redirect_to root_path
  end
    
  def delete
  end
end
