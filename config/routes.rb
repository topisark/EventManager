Eventmanager::Application.routes.draw do
  resources :users
  resources :events
  resources :sessions, only: [:new, :create]
  post 'sessions/new', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'
  post 'login', to: 'sessions#create'
  root 'events#index'
end
