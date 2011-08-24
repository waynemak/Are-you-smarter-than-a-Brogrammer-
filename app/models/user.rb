class User < ActiveRecord::Base
  MAX_SCORE = 1
  validates_presence_of :fb_id, :name

  def self.sign_in(credentials)
    if (user = User.where(:fb_id => credentials["extra"]["user_hash"]["id"]).first)
      user.update_attributes(:auth_key => credentials["credentials"]["token"])
    else
      user = User.create!(
        :auth_key   => credentials["credentials"]["token"],
        :name       => credentials["user_info"]["nickname"],
        :fb_id      => credentials["extra"]["user_hash"]["id"]
      )
    end
    
    user.update_attributes(:score => 0)
    user
  end

  def score
    score = read_attribute(:score)
    return Question.count if score > Question.count 
    score
  end
end
