class UsersController < ApplicationController
  respond_to :json, :html
  before_action :authenticate_user!

end
