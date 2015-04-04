class UsersController < ApplicationController

def index
  @users = User.all

  render json: @users
end

def the_current_user

  @currentUser = current_user
  # @user.save
  # binding.pry
  # puts 'debug'

  render json: @currentUser
end

def who_user
  # binding.pry
  @user = User.find(params[:id])

  render json: @user
end

end