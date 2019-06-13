class EstablishmentsController < ApplicationController

  def index
    @establishments = Establishment.all
  end

  def show
    @establishment = Establishment.find_by(id: params[:id])
    @tags = Tag.all
    @good = Good.new
    @occupant = current_occupant
    @goods = Good.find_by_tag(params[:tag])
    tag = Tag.find_by(params[:tag]).name
    @filter = "Filtered by, #{tag}"

  end

  def destroy
    if is_admin?
      eastablishment = Establishment.find_by(id: params[:id]).destroy
    else
      flash[:error] = "Unable to delete Establishment"
    end
    redirect_back(fallback_location: displays_path)
  end

end
