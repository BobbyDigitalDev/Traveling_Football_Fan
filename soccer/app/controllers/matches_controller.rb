class MatchesController < ApplicationController

	def index

	  @user = User.find(session[:user_id])
      # same as the one below just more abstract
      # @user.itineraries
      @itineraries = Itinerary.where({user_id: @user.id})

		    render :show

	end

	def show
		@stadia = Stadium.all
		@stadium.name = params[:name]
		@stadium.id = params[:id]
		render :show
	end

	def create
		@stadia = Stadium.all
		@stadium.name = params
	end



end
