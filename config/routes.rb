Rails.application.routes.draw do
  resources :products
  devise_for :users, :controllers => {registrations: "registrations", sessions: "sessions"}

  root 'products#index'
end
