class ItinerariesController < ApplicationController

<<<<<<< HEAD
 def index
   if session[:user_id] != nil # the client is logged in
     @user = User.find(session[:user_id])
     @itinerary = Itinerary.where({user_id: @user.id})
     # render text: "Hello, I know who you are: #{user.email}"
     render :index
     #we need to cr
   else
     #render text: 'Woah', status: 401
     redirect_to '/'
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

  
=======
    if session[:user_id] != nil # the client is logged in
      @user = User.find(session[:user_id])
      # same as the one below just more abstract
      # @user.itineraries
      @itineraries = Itinerary.where({user_id: @user.id})

      # render text: "Hello, I know who you are: #{user.email}"
      render :index

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

      @itineraries.user_id = session[:user_id]


      

      if @itineraries.save 
        redirect_to '/itineraries'
      end
>>>>>>> 6463a2d28edafa23173d2513a3e0fe511ebb4ff7

 def show
 end
end

