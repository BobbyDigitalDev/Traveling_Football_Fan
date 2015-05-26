class SessionsController < ApplicationController
  
  def new
    render :new
  end

  def create 

    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])

      session[:user_id] = user.id 

      redirect_to edit_users_path 
    else 

      @message ="This email and password combination does not exist."
      render :new
    end
  end

  def destroy 

    session[:user_id] = nil 

    redirect_to new_sessions_path 
  end 

end