class Article < ActiveRecord::Base
  attr_accessible :body, :draft, :title
  validates :body, :draft, :title, presence: true
  
  has_many :tags
  has_many :likes
  
  #turns the article body into an array
  #
  #returns the first 30 characters of the array using the .slice method
  def excerpt
      @article = Article.find(params[:id])
      body_array = @article.body.split(" ")
      body_array.slice(0,30)
    end
    
    def relative_length
        @article = Article.find(params[:id])
        array_length = @article.body.split(" ")
        if array_length >= 300
          return "Long! (Want fries with that?)"
        elsif (array_length >= 100) && (array_length < 300)
          return "Medium!"
        else
          return "Short!"
        end
      end
end