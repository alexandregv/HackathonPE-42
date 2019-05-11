Rails.application.routes.draw do
  root to: 'pages#index'

  resources :membres
  resources :offres
  resources :entreprises

  get '/',            to: 'pages#index',      as: 'index'
  get '/aide',        to: 'pages#aide',       as: 'aide'
  get '/register',    to: 'membres#new',      as: 'register'
end
