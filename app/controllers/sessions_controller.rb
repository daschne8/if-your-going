class SessionsController < ApplicationController

  def new
    @occupant = Occupant.new
    render :login
  end

  def create
    occupant = Occupant.find_by(name: session_params[:name])
    if occupant && occupant.authenticate(session_params[:password])
      flash[:success] = "Succesfully Logged In"
      session[:occupant_id] = occupant.id
      if occupant.admin == true
        redirect_to displays_path
      else
        redirect_to establishment_occupant_path(occupant.establishment,occupant)
      end
    else
      flash[:warning] = "Invalid username/password"
      return redirect_to login_path
    end
  end

  def destroy
    session.delete :occupant_id
    flash[:success] = "You have been Logged Out."
    redirect_to login_path
  end

  private

  def session_params
    params.require(:occupant).permit(:name, :password)
  end

end
