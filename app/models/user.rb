class User < ActiveRecord::Base
  validates_presence_of :fb_id, :name
end
