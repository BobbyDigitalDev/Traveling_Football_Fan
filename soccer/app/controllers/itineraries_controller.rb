class ItinerariesController < ApplicationController
  def index

    
    user = User.find_by(email: params[:email])
    puts User.authenticate 
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
    else
      @message ="This email and password combination does not exist."
      render :index
    end
  end



  def show
  end
end
