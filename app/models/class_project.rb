class ClassProject < ActiveRecord::Base
  attr_accessible :code_language, :github, :link, :name, :summary, :featured
  
  has_many :tags
  has_many :tags, through: :articles
  
  # validates :name, :presence => true
  
end