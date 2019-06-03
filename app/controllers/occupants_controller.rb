class OccupantsController < ApplicationController
  before_action :require_logged_in, only: [:show]

  def new
    @occupant = Occupant.new
  end

  def index

  end

  def show
    @occupant = current_occupant
    @establishments = @occupant.establishments
    @needed_goods = @establishments.collect{|est| est.occupants.collect{|occ| occ.goods}.flatten}.flatten.uniq
  end

  def create
    occupant = Occupant.new(
      name: params[:occupant][:name],
      password: params[:occupant][:password],
      password_confirmation: params[:occupant][:password_confirmation]
    )
    if occupant.save
      session[:occupant_id] = occupant.id
      flash[:success] = "Successfully created User!"
      redirect_to occupant_path(occupant)
    else
      flash[:warning] = "Invalid name or passwords don't match"
      redirect_to new_occupant_path
    end
  end



end
