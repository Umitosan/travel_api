Rails.application.routes.draw do
  use_doorkeeper
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  root to: "pages#home"

  get '/home' => 'pages#home'

  resources :destinations
  resources :reviews

end
