class User < ActiveRecord::Base
  attr_accessible :group, :username

  validates :username, :presence => true
end
