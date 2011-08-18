class Question < ActiveRecord::Base
  serialize :answer_options, Array
end
