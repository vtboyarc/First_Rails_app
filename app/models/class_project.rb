class ClassProject < ActiveRecord::Base
  attr_accessible :code_language, :github, :link, :name, :summary, :featured
  
  # validates :name, :presence => true
  
end