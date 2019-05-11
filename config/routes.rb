Rails.application.routes.draw do
  root to: 'pages#index'

  resources :offres
  resources :entreprises

  get '/',            to: 'pages#index',      as: 'index'
  get '/aide',        to: 'pages#help',       as: 'help'
# get '/offres',      to: 'pages#offers',     as: 'offers'
# get '/entreprises', to: 'pages#companies',  as: 'companies'
end
