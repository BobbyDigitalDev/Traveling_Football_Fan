class MatchesController < ApplicationController

	# def index

	#   @user = User.find(session[:user_id])
 #      # same as the one below just more abstract
 #      # @user.itineraries
 #      @itineraries = Itinerary.where({user_id: @user.id})

	# 	    render :show

	# end

	def show
		# @stadia = Stadium.all
		# @stadium.name = params[:name]
		render :show
	end

	
# def create
# 		@stadia = Stadium.new
# 		@staduim.id = params[:id]
# 		@stadium.name = params[:name]
# 		@stadium.capacity = params[:capacity]
# 		@stadium.city = params[:city]
# 		@stadium.country = params[:country]
# 		@stadium.home_team = params[:home_team]

# 		render :show

# 	end=end




end
