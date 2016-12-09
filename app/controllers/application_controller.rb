class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate

  helper_method :current_user

  def authenticate
    unless current_user
      redirect_to auth.new_session_path
    end
  end


  def current_user
    if session[:email]
      OpenStruct.new(email: session[:email])
    end
  end

end
