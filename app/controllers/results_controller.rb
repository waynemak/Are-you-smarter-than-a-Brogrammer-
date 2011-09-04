class ResultsController < ApplicationController
  # before_filter :authenticate_user

  def show 
    @leaders = User.order("score DESC").limit(10)
    @user = User.first
  end
end
