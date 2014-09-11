class LinksController < ApplicationController
    def index
      @links = Link.all
    end
    
    def new
      @link = Link.new
    end
  
    def create
      @link = Link.new(params[:link])
    
      if @link.save
        redirect_to links_index_path
      else
        render 'new'
      end
    end
    
    def edit
      @existing_link = Link.find(params[:id])
    end
    
  
    def update
      @existing_link = Link.find(params[:id])
    
      if @existing_link.update_attributes(params[:link])
        redirect_to links_index_path
      else
        render 'edit'
      end
    end
    
    def show
      @link = Link.find(params[:id])
    end 
  end
