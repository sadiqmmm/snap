class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	
  	if @user.save
  		flash[:success] = "Thanks for Registration!"
  		redirect_to root_url
  	else
  		render 'new'
  	end
  end
end
