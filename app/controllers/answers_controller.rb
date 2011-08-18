class AnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])
    if @question.correct_answer?(params[:question][:answer_options])
      #TODO: actually update the user. 
    end
    redirect_to => question_path(:page => @question.id + 1)
  end
end
