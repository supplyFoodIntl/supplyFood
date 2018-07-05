class ApplicationController < ActionController::Base
 # before_action :set_page_request_info
    helper_method :current_user, :signed_up?
    

    
    protect_from_forgery  with: :exception
    before_action :authenticate_user!
end
