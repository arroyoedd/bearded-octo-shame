class UsersController < ApplicationController
  def show#the name of our show webpage
    @user = User.find(params[:id])#used params to retrieve the user id. 
	#the appropriate request to the Users controller, params[:id] with be the user id, so the effect is the same as the find method.... User.find(1)
  end


  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])#instance variable = new params users that was incremented

    if @user.save
	#Handle a successful save. should return true
	flash[:success] = "Welcome to Ed's app"
	redirect_to @user #go to the user's page that was just mad 
	
    else
	render 'new'#renders the file new.html.erb
    end
  end

end
