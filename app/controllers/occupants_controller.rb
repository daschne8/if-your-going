class OccupantsController < ApplicationController

  before_action :require_logged_in, only: [:show]

  def new
    @occupant = Occupant.new
  end

  def show
    @occupant = current_occupant
    @establishment = @occupant.establishment
    @posted_goods = @occupant.goods
  end

  def create
    occupant = Occupant.new(occupant_params)
    occupant.establishment = Establishment.first
    # occupant = Occupant.new(
    #   name: params[:occupant][:name],
    #   password: params[:occupant][:password],
    #   password_confirmation: params[:occupant][:password_confirmation]
    # )
    # binding.pry
    if occupant.save
      session[:occupant_id] = occupant.id
      flash[:success] = "Successfully created User!"
      redirect_to occupants_show_path
    else
      flash[:warning] = "Invalid name or passwords don't match"
      redirect_to new_occupant_path
    end
  end

  private

  def occupant_params
    params.require(:occupant).permit(:name, :password, :password_confirmation)
  end


end
