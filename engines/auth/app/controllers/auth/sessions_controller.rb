module Auth
  class SessionsController < ApplicationController
    skip_before_action :authenticate
    layout 'common_layout/application'

    def new

    end

    def create
      session[:email] = params[:email]
      redirect_to main_app.root_path
    end
  end
end