Rails.application.routes.draw do
  resources :products
  devise_for :users
  root 'products#index'
  
  namespace :api do
    devise_for :users, :controllers => {registrations: "api/registrations", sessions: "api/sessions"}
  end
 
end
