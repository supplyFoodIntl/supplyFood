class ApplicationController < ActionController::Base
 # before_action :set_page_request_info
    helper_method :current_user, :signed_up?, :get_last_revision
    
    def get_last_revision
        @@last_revision ||= "#{SchemaMigration.last.version[6..7]}/#{SchemaMigration.last.version[4..5]}/#{SchemaMigration.last.version[0..3]}"
     end

#old access control, now using devise
#    def current_user
#        @current_user ||= User.find(session[:user_id]) if session[:user_id]
#    end
#    
#    def signed_up?
#        #return true if the current_user has value
#        !!current_user
#    end
#    def require_user
#        if !signed_up?
#            flash[:danger] = "you must be signed in!"
#            redirect_to root_path
#        end
#    end

    
#  private
  
#  def set_page_request_info
#    Thread.current[:page_request_info] = { current_user: current_user.is_a?(User) ? current_user : nil }
#  end

    
    protect_from_forgery  with: :exception
    before_action :authenticate_user!
end
