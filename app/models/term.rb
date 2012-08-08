class Term < ActiveRecord::Base
  has_many :definitions#, :dependent => :destory

  accepts_nested_attributes_for :definitions, :allow_destroy => true
  attr_accessible :name, :tags, :definitions_attributes

  validates :name, :presence => true, :uniqueness => true

  def self.search(query)
    if query
      formated_query = '%' + query + '%'
      find(:all, :conditions => ['name LIKE ? OR tags LIKE ?', formated_query, formated_query])
    else
      find :all
    end
  end

end
