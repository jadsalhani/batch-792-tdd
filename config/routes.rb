Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index'
  get '/products/new', to: 'products#new'
  post '/products', to: 'products#create'
end
