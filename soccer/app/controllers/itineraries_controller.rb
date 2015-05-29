class ItinerariesController < ApplicationController


  def index
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
  end


  def show
   
    @user = User.find(session[:user_id])
    @stadia = Stadium.all
    @itinerary = Itinerary.find(params[:id])

    render :show
  end

  def update
    # redirect_to :controller => 'matches', :action => 'create'
    #redirect_to '/matches/:id'
  end
end

