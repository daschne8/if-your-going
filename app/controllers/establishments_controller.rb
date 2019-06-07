class EstablishmentsController < ApplicationController

  def index
    @establishments = Establishment.all
  end

  def show
    @establishment = Establishment.find_by(id: params[:id])
    @tags = Tag.all
    @good = Good.new
    @occupant = current_occupant
    if !params[:tag].blank?
      tag = Tag.find_by(id: params[:tag])
      @goods = tag.goods
      @filter = "Filtered by tag, #{tag.name}"
    else
      @goods = Good.all
    end

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
