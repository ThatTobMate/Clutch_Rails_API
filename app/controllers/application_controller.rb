class ApplicationController < ActionController::API
  include ActionController::RespondWith
  include ActionController::StrongParameters
  include DeviseTokenAuth::Concerns::SetUserByToken
  respond_to :json

  # def current_user
  #   @current_user ||= User.find(session[:user_id]) if session[:user_id]
  # end
  # before_filter :authenticate_user!
end
