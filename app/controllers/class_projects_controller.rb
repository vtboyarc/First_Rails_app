class ClassProjectsController < ApplicationController

    def index
    end
  
    def new
      @project = ClassProject.new
    end
    
    def create
      @project = ClassProject.new(params[:project])

      if @project.save
        redirect_to class_projects_path
      else
        render "new" #refers to app/views/users/new
  end
  
  def show
      @project = ClassProject.find(params[:id])
    end
end
