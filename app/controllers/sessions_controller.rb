class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to products_url, notice: "Logged in! ...Jabroni!"
    else
      flash.now[:alert] = "Invalid email or password"
      render "new"
    end
  end
  #establishes the login session, checking login credentials against encrypted database. COMPLICATED.

  def destroy
    session[:user_id] = nil
    redirect_to products_url, notice: "Logged out! ...Jabroni."
  end
  #ends the session by erasing the user id, essentially...?
end
