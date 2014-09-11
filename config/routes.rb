Portfolio::Application.routes.draw do
  # get "profile" => 'pages#profile', :as => "profile"
  # get "contact" => 'pages#contact', :as => "contact"
  ######################################################
  
    root :to => 'pages#home'
    get "contact" => 'pages#contact'
    
    get "classprojects" => 'class_projects#index', :as => "class_project"
  
    get "classprojects/new" => 'class_projects#new', :as => "project_new"
    get "classprojects/:id/edit" => 'class_projects#edit', :as => "project_edit"
  
    post "classprojects" => 'class_projects#create' # Notice that the path 'classprojects' is the same as the index path.
    put "classprojects/:id" => 'class_projects#update' # Notice that the path 'classprojects/:id' is the same as the show route.
  
    get "classprojects/:id" => 'class_projects#show', :as => "project"
  
  ##################################################################
  #contact routes
  get "contacts" => 'contacts#index', :as => 'contact'

  get "contacts/new" => 'contacts#new', :as => "contact_new"
  get "contacts/:id/edit" => 'contacts#edit', :as => "contact_edit"

  post "contacts" => 'contacts#create'
  put "contacts/:id" => 'contacts#update'

  get "contacts/:id" => 'contacts#show', :as => "contact"
  ###########################################################
  #article routes
  get "articles" => 'articles#index', :as => 'article'

  get "articles/new" => 'articles#new', :as => "article_new"
  get "articles/:id/edit" => 'articles#edit', :as => "article_edit"

  post "articles" => 'articles#create'
  put "articles/:id" => 'articles#update'

  get "articles/:id" => 'articles#show', :as => "article"
  ############################################################
  #link routes
  get "links" => 'links#index', :as => 'link'

  get "links/new" => 'links#new', :as => "link_new"
  get "links/:id/edit" => 'links#edit', :as => "link_edit"

  post "links" => 'links#create'
  put "links/:id" => 'links#update'

  get "links/:id" => 'links#show', :as => "link"
end