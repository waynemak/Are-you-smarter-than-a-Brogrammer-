class AuthenticationsController < ApplicationController
  def create
    user = User.new
    omniauth = request.env["omniauth.auth"] 
    user.auth_key = omniauth["credentials"]["token"]
    user.name = omniauth["user_info"]["nickname"]
    user.fb_id = omniauth["user_info"]["extra"]["user_hash"]["id"]
    user.save

    render :json => user
  end

end
