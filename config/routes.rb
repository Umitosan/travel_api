Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :users

  post 'auth_user' => 'authentication#authenticate_user'

  root to: "pages#home"

  get '/home' => 'pages#home'


  resources :destinations
  resources :reviews

end
