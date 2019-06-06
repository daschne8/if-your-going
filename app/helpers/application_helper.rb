module ApplicationHelper

  def current_occupant
    @occupant = (Occupant.find_by(id: session[:occupant_id]) || Occupant.new)
  end
  def logged_in?
    current_occupant.id != nil
  end

  def require_logged_in
    return redirect_to login_url unless session[:occupant_id]
  end

  def is_current_occupant?
    return redirect_to establishment_path(current_occupant.establishment) unless current_occupant == Occupant.find_by(id: params[:id])
  end

end
