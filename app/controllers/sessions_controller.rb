class SessionsController < ApplicationController
   before_action :set_session, only: [:edit, :update, :destroy]

  def new
 
      
  end

  def create
      current_emailByParams = params[:session][:email].downcase
      current_passwordByParams = params[:session][:password_digest]
      
       user = User.find_by(email: current_emailByParams)
      #if user.authenticate( :password_digest)
      #
      if authenticate_user(current_emailByParams, current_passwordByParams)
          session[:user_id]=user.id
          flash[:sucess]="You are logged in!"
          redirect_to user_path(user)
      else
          flash[:danger]="You are not logged in! Check your email and password."
          redirect_to signedin_path(user)
      end
  end
    
  def show
  end
    
  def destroy
      session[:user_id]=nil
      flash[:success] = "You have logged out"
      redirect_to root_path
  end
    
  def delete
  end
    
    
    
private
    
    def sign_in
      @user =  autenticate_user?(@user.name, @user.password)     
    end
    
    def authenticate_user( parm_name, parm_password)
        selected_user = User.find_by_email ( parm_name)
        #binding.pry
        if selected_user.password_digest==parm_password
            true
        else
            false
        end
    end
    
    # Use callbacks to share common setup or constraints between actions.
    def set_session
      @session = Session.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def session_params
      params.require(:session).permit(:id,:user_id,:user,:password_digest)
    end
end
