class AnswersController < ApplicationController

  def create
    @question = Question.find(params[:question_id])

    return redirect_to question_path(@question, :page => @question.id + 1) unless params[:answer_options]
    if @question.correct_answer?(params[:answer_options])
      logger.info { "Update the answer count" }
    end
    redirect_to question_path(@question, :page => @question.id + 1)
  end

end
