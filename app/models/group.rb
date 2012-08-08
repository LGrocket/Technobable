class Group < ActiveRecord::Base
  has_many :users
  has_many :definitions

  attr_accessible :name, :users_attributes, :definitions_attributes
  accepts_nested_attributes_for :definitions, :allow_destroy => true
end
