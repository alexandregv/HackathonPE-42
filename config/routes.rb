Rails.application.routes.draw do
  devise_for :entreprises, path: 'entreprises', controllers: { sessions: 'entreprises/sessions' }
  devise_for :candidats,   path: 'candidats',   controllers: { sessions: 'candidats/sessions' }

  get '/',            to: 'pages#index',      as: 'index'
  get '/aide',        to: 'pages#aide',       as: 'aide'
  get '/recruter',    to: 'pages#recruter',   as: 'recruter'
  get '/candidater',  to: 'pages#candidater', as: 'candidater'

  root to: 'pages#index'
end
