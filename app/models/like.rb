class Like < ActiveRecord::Base
  attr_accessible :article_id, :ip_address
  
  belongs_to :article
end
