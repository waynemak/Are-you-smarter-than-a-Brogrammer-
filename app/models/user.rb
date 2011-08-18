class User < ActiveRecord::Base
  validates_presence_of :fb_id, :name

  def self.sign_in(credentials)
    if (user = User.where(:fb_id => credentials["extra"]["user_hash"]["id"]).first)
      user.update_attributes(:auth_key => credentials["credentials"]["token"])
    else
      User.create!(
        :auth_key   => credentials["credentials"]["token"],
        :name       => credentials["user_info"]["nickname"],
        :fb_id      => credentials["extra"]["user_hash"]["id"]
      )
    end
  end
end
