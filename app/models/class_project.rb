class ClassProject < ActiveRecord::Base
  attr_accessible :code_language, :github, :link, :name, :summary
  
  validates :name, presence: true
  
end
