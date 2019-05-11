Rails.application.routes.draw do
  devise_for :entreprises, path: 'entreprises', controllers: { sessions: 'entreprises/sessions' }

  get '/',            to: 'pages#index',      as: 'index'
  get '/aide',        to: 'pages#aide',       as: 'aide'
  get '/recruter',    to: 'pages#recruter',   as: 'recruter'

  root to: 'pages#index'
end
