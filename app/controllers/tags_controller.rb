class TagsController < ApplicationController

  def destroy
    if is_admin?
      tag = Tag.find_by(id: params[:id]).destroy
    else
      flash[:error] = "Unable to delete Tag"
    end
    redirect_back(fallback_location: displays_path)
  end

end
