Eventmanager::Application.routes.draw do
  resources :participations

  resources :event_types

  resources :users
  resources :events
  resources :sessions, only: [:new, :create]
  resources :event_types
  post 'sessions/new', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  root 'events#index'
end
