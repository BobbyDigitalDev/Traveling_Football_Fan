class UsersController < ApplicationController
  def new
  	@user = User.new
  	render :new
  end
  

  def create
  	@user = User.new
  	@user.name = params[:name]
  	@user.email = params[:email]
  	@user.password_digest = params[:password]
  	@user.password_digest = params[:password]

  	if @user.save 
  		redirect_to "/users" #come and modify when itineraries are made
  	else
  		render :new
  	end




  end



  # def edit
  # end


end
