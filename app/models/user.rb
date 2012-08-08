class User < ActiveRecord::Base
  belongs_to :group

  attr_accessible :username

  validates :username, :presence => true
end
