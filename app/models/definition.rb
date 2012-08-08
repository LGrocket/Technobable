class Definition < ActiveRecord::Base
  belongs_to :term
  belongs_to :group
  attr_accessible :content, :group_id

  validates_presence_of :content

end
