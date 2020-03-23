class ApplicationController < ActionController::Base
  layout :set_layout

  class Forbidden < ActionController::ActionControllerError; end
  class IpAddressRejected < ActionController::ActionControllerError; end

  include ErrorHandlers if Rails.env.production?

  private
  
  def set_layout
    if params[:controller].match(%r{\A(staff|admin|cutomer)/})
      Regexp.last_match[1]
    else
      "customer" 
    end   
  end


  def current_staff_member
    if session[:staff_member_id]
      @current_staff_member ||= StaffMember.find_by(id: session[:staff_member_id])
    end
  end

  helper_method :current_staff_member

end
