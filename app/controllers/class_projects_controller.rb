class ClassProjectsController < ApplicationController
 
  def index
    @class_projects = ClassProject.all
  end
  
  binding.pry
  def new
    @class_project = ClassProject.new
  end
 
  def create
    @class_project = ClassProject.new(params[:class_project])
    
    if @class_project.save
      redirect_to class_project_path
    else
      render "new"
    end
  end
  
  def edit
    @existing_project = ClassProject.find(params[:id])
  end
  
  def update
    @existing_project = ClassProject.find(params[:id])
    
    if @existing_project.update_attributes(params[:class_project])
      redirect_to class_project_path(@existing_project.id)
    else
      render "edit"
    end
  end
  
  def show
    @class_project = ClassProject.find(params[:id])
  end
  
  #method to make an existing project post a featured project
  def make_featured
    @existing_project = ClassProject.find(params[:id])

    #note that this is update_attribute, rather than update_attributes -- we're only changing one thing
    @existing_project.update_attribute(:featured, true)

    redirect_to class_project_path(@existing_project.id)
  end
  
  
  
end