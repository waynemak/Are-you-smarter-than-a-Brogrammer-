require 'spec_helper'

describe AnswersController do

  describe "POST 'create'" do
    let(:question) { Factory(:question) }
    before(:each) do
      post 'create', :question_id => question.id, :question => {:answer_options => 1 }
    end

    it { should redirect_to question_path(question, :page => 2) }
  end

end
