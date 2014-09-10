class ClassProjectsController < ApplicationController
  def index
    @class_projects = ClassProject.all
  end
  
  def show
    @class_project = ClassProject.find(params[:id])
  end
  
  def new
    @class_project = ClassProject.new
  end
  
  def create
    @class_project = ClassProject.new(params[:class_project])
    
    if @class_project.save
      redirect_to class_project_path
    else
      render 'new'
    end
  end
  
  def edit
    @class_project = ClassProject.find(params[:id])
  end
  
  def update
    @class_project = ClassProject.find(params[:id])
    
    if @class_project.update_attributes(params[:class_project])
      redirect_to class_project_path(@class_project.id)
    else
      render 'edit'
    end
  end
end


#
#
#
# class ClassProjectsController < ApplicationController
#
#     def index
#       @projects = ClassProject.all
#     end
#
#
#     def show
#       @project = ClassProject.find(params[:id])
#    end
#
#     def new
#       @project = ClassProject.new
#       binding.pry
#     end
#
#     def create
#       @project = ClassProject.new(params[:project])
#
#       if @project.save
#         redirect_to projects_index_path #or class_projects_index_path ?
#       else
#         render "new" #refers to app/views/users/new
#         binding.pry
#   end
# end
#
#   def edit
#     @existing_project = ClassProject.find(params[:id])
#   end
#
#   def update
#     @existing_project = ClassProject.find(params[:id])
#
#     if @existing_project.update_attributes(params[:existing_project]) #or project?
#       redirect_to projects_index_path
#     else
#       render "edit"
#     end
#   end
# end