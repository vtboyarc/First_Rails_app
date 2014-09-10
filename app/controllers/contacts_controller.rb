class ContactsController < ApplicationController
  
  def index
    @contacts = Contact.all
  end
  
  
    def show
      @contact = Contact.find(params[:id])
   end
      
    def new
      @contact = Contact.new
      
    end
    
    def create
      @contact = Contact.new(params[:contact])

      if @contact.save
        redirect_to contacts_index_path
      else
        render "new" #refers to app/views/users/new
        
  end
end

    def edit
      @contact = Contact.find(params[:id])
    end
  
    def update
      @contact = Contact.find(params[:id])
    
      if @contact.update_attributes(params[:contact])
        redirect_to contact_path
      else
        render "edit"
      end
  end 
end








