Portfolio::Application.routes.draw do
  get "home" => 'pages#home', :as => "home"
  get "profile" => 'pages#profile', :as => "profile"
  get "contact" => 'pages#contact', :as => "contact"
end
