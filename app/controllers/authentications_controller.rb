class AuthenticationsController < ApplicationController
  def create
    @user = User.sign_in(request.env["omniauth.auth"])
    session[:fb_id] = @user.fb_id
    redirect_to question_path(Question.first)
  end
end
