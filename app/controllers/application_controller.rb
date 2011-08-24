class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate_user
    redirect_to(root_path) unless current_user
  end

  def current_user
    return nil unless session[:fb_id]
    User.where(:fb_id => session[:fb_id]).first
  end
end
