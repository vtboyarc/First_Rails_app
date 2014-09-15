class ContactsController < ApplicationController
  
   skip_before_filter :authorize, :only => [:new, :create]
  
  def index
    @contacts = Contact.all
  end
  
  def new
    @contact = Contact.new   
  end
    
  def create
    @contact = Contact.new(params[:contact])

    if @contact.save
      redirect_to root_path, :notice => "Sent, message has been."
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
        redirect_to contact_path
      else
        render "edit"
      end
  end 
  
  def show
    @contact = Contact.find(params[:id])
  end

  def destroy
    @contact = Contact.find(params[:id])
    redirect_to contact_index_path, :notice => "Deleted this, you have."
  end

end


