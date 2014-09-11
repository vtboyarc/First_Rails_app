class Tag < ActiveRecord::Base
  attr_accessible :name, :skill
  
  belongs_to :class_project
  belongs_to :article
end
