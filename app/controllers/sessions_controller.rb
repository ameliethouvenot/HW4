class SessionsController < ApplicationController
  def new
    render :template => "sessions/new"
  end

  def create
    @user = User.find_by({"email" => params["email"]})
    if @user != nil
      if BCrypt::Password.new(@user["password"]) == params["password"]
      
        session["user_id"] = @user["id"]
        flash["notice"] = "Welcome."
        redirect_to "/places"
      
        else
        flash["notice"] = "Incorrect login credentials."
        redirect_to "/login"
        end
    
    else
      flash["notice"] = "Incorrect login credentials."
      redirect_to "/login"
    
    end

  end

  def destroy
    session["user_id"] = nil
    flash["notice"] = "You are now signed out."
    redirect_to "/login"
  end
end
  