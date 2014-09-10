class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
end
