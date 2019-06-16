class ApplicationController < ActionController::Base
  include ApplicationHelper
  protect_from_forgery with: :exception
  # helper_method :current_user
  #
  # def current_occupant
  #   session[:user_id].nil? ? nil : User.find(session[:user_id])
  # end

end
