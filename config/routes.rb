Portfolio::Application.routes.draw do
  get "home" => 'pages#home', :as => "home"
  get "profile" => 'pages#profile', :as => "profile"
  get "contact" => 'pages#contact', :as => "contact"
  get "class_projects" => 'class_projects#index', :as => 'index'
  get "project/new" => 'project#new', :as => "new_project_link"
  post "project" => 'project#create', :as => "create"
  get "project/:id" => 'project#show', :as => "project"
end
