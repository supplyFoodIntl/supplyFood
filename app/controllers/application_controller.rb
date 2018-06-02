class ApplicationController < ActionController::Base
 # before_action :set_page_request_info
  # ATENTION : the changes here was necessary to implement jupyter notebook
    helper_method :current_user, :signed_up?
    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    def signed_up?
        #return true if the current_user has value
        !!current_user
    end
    def require_user
        if !signed_up?
            flash[:danger] = "you must be signed in!"
            redirect_to root_path
        end
    end
    
#  private
  
#  def set_page_request_info
#    Thread.current[:page_request_info] = { current_user: current_user.is_a?(User) ? current_user : nil }
#  end
    
    protect_from_forgery  with: :exception
end
