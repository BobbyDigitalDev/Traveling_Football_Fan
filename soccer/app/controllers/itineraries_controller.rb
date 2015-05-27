class ItinerariesController < ApplicationController
  def index
    if session[:user_id] != nil # the client is logged in
      user = User.find(session[:user_id])
      itineraries = Itinerary.where({user_id: user.id})
      render text: "Hello, I know who you are: #{user.email}"
    else
      render text: 'Woah', status: 401
    end
    # user = User.find_by(email: params[:email])
    # puts User.authenticate 
    # if user && user.authenticate(params[:password])
    #   session[:user_id] = user.id 
    # else
    #   @message ="This email and password combination does not exist."
    #   render :index
    # end
  end



  def show
  end
end
