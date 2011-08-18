class Question < ActiveRecord::Base
  serialize :answer_options, Array
  
  def correct_answer?(index)
    index == correct_answer
  end
end
