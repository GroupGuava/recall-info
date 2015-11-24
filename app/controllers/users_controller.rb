class UsersController < ApplicationController
  respond_to :json, :html

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.save
    respond_with @user, :location => root_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :first, :last)
  end

end
