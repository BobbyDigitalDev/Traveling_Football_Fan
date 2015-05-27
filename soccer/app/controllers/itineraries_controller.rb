class ItinerariesController < ApplicationController
  def index

    if session[:user_id] != nil # the client is logged in
      @user = User.find(session[:user_id])
      @itineraries = Itinerary.where({user_id: @user.id})

      # render text: "Hello, I know who you are: #{user.email}"
      render :index
      #we need to cr
    else
      #render text: 'Woah', status: 401
      redirect_to '/'
    end
  end

    def new
      @itineraries = Itinerary.new
      render :index
    end

    def create
      @itineraries = Itinerary.new
      @itineraries.name = params[:name]
        render :show

      




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

