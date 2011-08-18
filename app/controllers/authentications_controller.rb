class AuthenticationsController < ApplicationController
  def create
    @user = User.sign_in(request.env["omniauth.auth"])
    render :json => @user
  end
end
