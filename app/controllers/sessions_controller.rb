class SessionsController < ApplicationController

  def create
    user = User.new(
      name: params[:name],
      password: params[:password]
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = "Successfully created User!"
      redirect_to root
    else
      flash[:warning] = "Invalid name or password"
      redirect_to root
    end
  end

  def login
    user = User.find_by(name: params[:occupant][:name])
    user = user.try(:authenticate, params[:occupant][:password])
    return redirect_to(controller: 'sessions', action: 'new') unless user
    session[:user_id] = user.id
    @user = user
    redirect_to root
  end

  def destroy
    session.delete :user_id
    redirect_to root
  end

end
