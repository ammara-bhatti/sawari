Rails.application.routes.draw do

  # default_url_options :host => "'http://localhost:3000"

  devise_for :users
  # match '/users/:id/destroy', to: 'users#destroy', via: [:get, :patch], as: 'signout'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq'
  # mount Ckeditor::Engine => '/ckeditor'
  
  resources :users
  root to:'users#index'
end
