class SessionsController < ApplicationController
  def create
    if user = User.authenticate(params[:email], params[:password])
      session[:usser_id] = user.id
      redirect_to root_path, notice: "Logged in succesfully"
    else
      flash.now[:alert] = "Invalid login/password combination"
      render :new
    end
  end

  def destroy
    reset_session
    redirect_to root_path, notice: "You succesfully logged out"
  end 
end
