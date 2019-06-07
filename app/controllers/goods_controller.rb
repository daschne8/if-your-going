class GoodsController < ApplicationController

  def create
    occupant = Occupant.find_by(id: good_params[:occupant_id])
    good = Good.create(good_params)
    good.save
    redirect_back(fallback_location: establishment_occupant_path(occupant.establishment,occupant))
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
