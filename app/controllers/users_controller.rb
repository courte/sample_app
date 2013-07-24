class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user
  	else
  		render 'new'
  	end
  end

  private

  	# Requires that :user be a key in the params Hash and
  	# only accept :name, :email, :password, and :password_confirmation attr
  	def user_params
  	 	params.require(:user).permit(:name, :email, :password,
  	 															 :password_confirmation)

  	 end
end
