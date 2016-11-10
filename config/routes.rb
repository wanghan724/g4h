Rails.application.routes.draw do
  resources :pt_profiles
  resources :client_profiles
  devise_for :users
  root 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
