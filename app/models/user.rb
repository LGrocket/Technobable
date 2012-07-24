class User < ActiveRecord::Base
  attr_accessible :group, :username
end
