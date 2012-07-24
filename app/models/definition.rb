class Definition < ActiveRecord::Base
  belongs_to :term
  attr_accessible :content, :context
end
