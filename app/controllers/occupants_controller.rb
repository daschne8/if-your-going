class OccupantsController < ApplicationController
  before_action :require_logged_in, only: [:show]

  def new
  end

  def index

  end

  def show
    @occupant = current_occupant
  end

  def create
    occupant = User.new(
      name: params[:name],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if occupant.save
      session[:occupant_id] = occupant.id
      flash[:success] = "Successfully created User!"
      redirect_to root
    else
      flash[:warning] = "Invalid name or passwords don't match"
      redirect_to root
    end
  end



end
