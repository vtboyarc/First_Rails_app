class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new   
  end
    
  def create
    @article = Article.new(params[:article])

    if @article.save
      redirect_to article_path
    else
      render "new" #refers to app/views/users/new
    end
end
    
def edit
  @existing_article = Article.find(params[:id])
end
    
  def update
    @existing_article = Article.find(params[:id])
    
      if @existing_article.update_attributes(params[:article])
        redirect_to article_path(@existing_article.id)
      else
        render "edit"
      end
  end 
  
  def show
    @article = Article.find(params[:id])
  end
end

