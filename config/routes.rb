Portfolio::Application.routes.draw do
  # get "home" => 'pages#home', :as => "home"
 #  get "profile" => 'pages#profile', :as => "profile"
 #  get "contact" => 'pages#contact', :as => "contact"
  ######################################################
    get "home" => 'pages#welcome', :as => "welcome"
  
    get "about" => 'pages#bio', :as => "bio"
  
    get "classprojects" => 'class_projects#index', :as => "class_project"
  
    get "classprojects/new" => 'class_projects#new', :as => "project_new"
    get "classprojects/:id/edit" => 'class_projects#edit', :as => "project_edit"
  
    post "classprojects" => 'class_projects#create' # Notice that the path 'classprojects' is the same as the index path.
    put "classprojects/:id" => 'class_projects#update' # Notice that the path 'classprojects/:id' is the same as the show route.
  
    get "classprojects/:id" => 'class_projects#show', :as => "project"
  
  

  ##################################################################
  #contacts routes
  get "contacts" => 'ccontacts#index', :as => 'contacts'

  get "contacts/new" => 'contacts#new', :as => "new_contacts"
  get "contacts/:id/edit" => 'contactss#edit', :as => "edit_contacts"

  post "contacts" => 'contacts#create'
  put "contacts/:id" => 'contacts#update'

  get "contacts/:id" => 'contacts#show', :as => "contact"

end