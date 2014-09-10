class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end
  
  def new
    @contact = Contact.new   
  end
    
  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      redirect_to contact_path
    else
      render "new" #refers to app/views/users/new
    end
end
    
def edit
  @existing_contact = Contact.find(params[:id])
end
    
  def update
    @existing_contact = Contact.find(params[:id])
    
      if @existing_contact.update_attributes(params[:contact])
        redirect_to contact_path(@existing_contact.id)
      else
        render "edit"
      end
  end 
  
  def show
    @contact = Contact.find(params[:id])
  end
end

