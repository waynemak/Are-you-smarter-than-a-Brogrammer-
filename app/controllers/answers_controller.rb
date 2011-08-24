class AnswersController < ApplicationController

  before_filter :authenticate_user

  def create
    @question = Question.find(params[:question_id])

    return redirect_to question_path(@question) unless params[:answer_options]
    if @question.correct_answer?(params[:answer_options].to_i)
      current_user.increment(:score).save
    end
    
    if @question.id == Question.count
      redirect_to result_path
    else
      redirect_to question_path(:id => @question.id + 1)      
    end
  end
end
