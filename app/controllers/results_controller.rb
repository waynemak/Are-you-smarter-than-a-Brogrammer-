class ResultsController < ApplicationController
  # before_filter :authenticate_user
  
  def show 
    @final_score = current_user.score
    @leaders = User.order("score DESC").limit(10)
    @user = current_user
  end
end
