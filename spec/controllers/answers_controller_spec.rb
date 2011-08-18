require 'spec_helper'

describe AnswersController do

  describe "POST 'create'" do
    let(:question) { Factory(:question) }

    before(:each) do
      Question.stub(:find) { question }
      question.stub(:correct_answer?) { true }
      post 'create', :question_id => question.id
    end

    it { should redirect_to question_path(question, :page => 2) }
  end

end
