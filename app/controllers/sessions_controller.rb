class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "You signed in!"
      redirect_to user
    else
      flash[:alert] = "You are not who you say you are..."
      redirect_to :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to new_session_path
  end



end
