Eventmanager::Application.routes.draw do
  resources :users
  resources :events
  resources :sessions, only: [:new, :create]
  delete 'signout', to: 'sessions#destroy'
  root 'events#index'
end
