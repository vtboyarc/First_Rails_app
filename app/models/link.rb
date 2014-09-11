class Link < ActiveRecord::Base
  attr_accessible :name, :url
  validates :name, :url, presence: true
  validates :url, uniqueness: true
end
