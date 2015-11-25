class UsersController < ApplicationController
  respond_to :json, :html

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    	respond_with @user, :location => root_path
		else
			render 'new'
		end
  end

  private
  def user_params
    params.require(:user).permit(:username, :email, :first, :last)
  end

end
