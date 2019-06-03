Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :shops
  resources :establishments
  resources :occupants

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  # get '/signup', to: 'occupants#new'
  # post '/signup', to: 'occupants#create'

  root 'sessions#login'

end
