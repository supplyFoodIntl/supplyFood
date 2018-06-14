module ProfilesHelper
  def get_current_profile
      @current_profile ||= Profile.find_by user_id:current_user
  end
end
