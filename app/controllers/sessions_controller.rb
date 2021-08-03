class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Login the user
      log_in user
      redirect_back_or user
    else
      # Create error message
      flash.now[:danger] = "Invalid email or password"
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
