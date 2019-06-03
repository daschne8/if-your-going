class ApplicationController < ActionController::Base

  def current_occupant
    @occupant = (Occupant.find_by(id: session[:occupant_id]) || Occupant.new)
  end
  def logged_in?
    current_occupant.id != nil
  end

  def require_logged_in
    return redirect_to login_url unless session[:occupant_id]
  end


end
