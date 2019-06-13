class ApplicationController < ActionController::Base
  include ApplicationHelper

  def filtered_by
    if params[:tag] && !params[:tag].blank?
      tag = Tag.find_by(id: params[:tag]).name
      @filter = "Filtered by, #{tag}"
    else
      @filter = ""
    end
    return @filter
    end

end
