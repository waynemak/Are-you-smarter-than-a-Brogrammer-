class AuthenticationsController < ApplicationController
  def create
    user = User.new
    # user.auth_key = request.env["omniauth.auth"][
    render :json => request.env["omniauth.auth"]
  end

end
