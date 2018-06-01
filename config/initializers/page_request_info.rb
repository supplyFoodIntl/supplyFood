module ActionController
  class PageRequestInfo
    # http://guides.rubyonrails.org/active_support_instrumentation.html
    # http://api.rubyonrails.org/classes/ActiveSupport/Notifications.html
    # call() is called as an ActiveSupport::Notifications subscriber callback - see the very bottom of this file for the subscriber registration
    # We manipulate the Notification event payload so that lograge can log out extra information easily.
    def call(name, started, finished, unique_id, payload)
      request_info = Thread.current[:page_request_info] || {}
      log_info = {}

      log_info.merge!(select_params(payload))
      log_info.merge!(user_info(request_info[:current_user]))
      
      payload.merge!(log_info)
    rescue StandardError => e
      # Log errors in Sentry ... don't want our app to blow up because of an instrumentation exception.
      Raven.extra_context(request_info: request_info, payload: payload)
      Raven.capture_exception(e)
    end
    
    private 
    
    # Lograge already logs the controller and action from the raw payload. No reason to log it in params as well.
    def select_params(payload)
      return {} if !payload[:params].is_a?(Hash)
      params = payload[:params].reject do |k|
        ['controller', 'action'].include? k
      end
      { params: params }
    end
    
    def user_info(user)
      if user.is_a?(User)
        { user_id: user.id, user_email: user.email }
      else
        {}
      end
    end
    
  end
end