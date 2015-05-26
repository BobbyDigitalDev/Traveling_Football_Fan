class UsersController < ApplicationController
  def new
  	@user = User.new
  	render :new
  end
  

  def create
  	@user = User.new
  	@user.name = params[:name]
  	@user.email = params[:email]
  	@user.password = params[:password]
    @user.password_confirmation = params[:password_confirmation]

<<<<<<< HEAD
    if params[:password] == params[:password_confirmation]
      flash.now[:alert] = "Passwords must match!"
    end
x

  	if @user.save 
=======
    if @user.save 
>>>>>>> a014b5be7bd203697a668c1b5b368bdfe2b70f86
  		redirect_to "/users" #come and modify when itineraries are made
  	else
  		render :new
    end
  end
end
