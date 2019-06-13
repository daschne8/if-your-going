class GoodsController < ApplicationController

  def create
    occupant = Occupant.find_by(id: good_params[:occupant_id])
    good = Good.create(good_params)
    good.save
    redirect_back(fallback_location: establishment_occupant_path(occupant.establishment,occupant))
  end

  def show
    @good = Good.find_by(id: params[:id])
    # @establishment = Establishment.find_by(params[:establishment_id])
  end

  def edit
    @good = Good.find_by(params[:id])
    @occupant = current_occupant
  end

  def update
    good = Good.find_by(id: params[:id])
    if good.update(good_params)
      redirect_to establishment_good_path(good)
    else
      redirect_to edit_establishment_good_path(good)
    end
  end

  def destroy
    occupant = current_occupant
    Good.find_by(id: params[:id]).destroy
    redirect_back(fallback_location: establishment_occupant_path(occupant.establishment,occupant))
  end

  private

  def good_params
    params.require(:good).permit(:name, :occupant_id, :description, tag_ids:[], tags_attributes: [:name])
  end

end
