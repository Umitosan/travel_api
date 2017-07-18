Rails.application.routes.draw do
  use_doorkeeper
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users


  root to: "reviews#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :destinations
  resources :reviews

end
