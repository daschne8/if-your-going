class GoodsController < ApplicationController

  def create
    occupant = Occupant.find_by(id: good_params[:user_id])
    good = Good.create(name: good_params[:name], description: good_params[:description])
    good.occupant = occupant
    good.save
    redirect_back(fallback_location: establishment_occupant_path(occupant.establishment,occupant))
    #redirect_to establishment_occupant_path(occupant.establishment,occupant)
  end

  private

  def good_params
    params.require(:good).permit(:name, :user_id, :description)
  end

end
