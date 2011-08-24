class ResultsController < ApplicationController
  before_filter :authenticate_user
  
  def show 
    @final_score = current_user.score
    @user = current_user
  end
end
