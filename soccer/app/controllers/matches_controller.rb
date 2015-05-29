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
		#redirect_to 'http://www.google.com'
		#render '/'
	end

	def create

		matchData = {}
		matchData[:team1_name] = params[:team1_name]
		matchData[:team2_name] = params[:team2_name]
		matchData[:date] = params[:date]
		matchData[:itinerary_id] = params[:itinerary_id]
		matchData[:stadium_id] = params[:stadium_id]

		match = Match.new(matchData)

		match.save

		#redirect_to itinerary_path(match.itinerary) anna way
		redirect_to "/itineraries/#{params[:itinerary_id]}"

	# 	@matches = Match.new 
  #   @matches.team1_name = params[:team1_name]
  #   @matches.team2_name = params[:team2_name]
  #   @matches.date = params[:date]
  #   @itinerary=Itinerary.find(params[:id])
  #   @stadium=Stadium.find(params[:id])

  #   @itineraries.user_id = session[:user_id]

  #   if @matches.save 
  #     redirect_to '/'
  #   end
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
