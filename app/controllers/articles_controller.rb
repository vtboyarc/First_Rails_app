require 'pry'
class ArticlesController < ApplicationController
  before_filter :authorize, :only => [:new, :create, :edit, :update, :destroy]
  def index
    @articles = Article.all
  end
  
  def new
    @article = Article.new   
  end
    
  def create
    @article = Article.new(params[:article])

    if @article.save
      redirect_to articles_path
    else
      render "new" #refers to app/views/users/new
    end
end
    
  
    def show
      @article = Article.find(params[:id])
      @like = Like.new
      @all_likes = Like.where({article_id: params[:id]})
      @ip = true
      
      @all_likes.each do |l|
        if l.ip_address == request.remote_ip
          @ip = false
        end
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

    
    def destroy
        @article = Article.find(params[:id])
        @article.destroy
    
        redirect_to articles_path
      end
  
    end
