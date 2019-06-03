class SessionsController < ApplicationController

  def new
    @occupant = Occupant.new
    render :login
  end

  def create
    occupant = Occupant.find_by(name: params[:occupant][:name])
    if occupant && occupant.authenticate(params[:occupant][:password])
      flash[:success] = "Succesfully Logged In"
      session[:occupant_id] = occupant.id
      redirect_to occupant_path(occupant)
    else
      flash[:warning] = "Invalid username/password"
      return redirect_to login_path
    end
  end

  def destroy
    session.delete :occupant_id
    flash[:success] = "You have been Logged Out."
    redirect_to root
  end

end
