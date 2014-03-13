Eventmanager::Application.routes.draw do
  resources :users
  resources :events

  root 'events#index'
end
