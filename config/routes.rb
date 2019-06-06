Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :shops
  resources :goods, only: [:create]
  resources :establishments, only: [:show] do
    resources :occupants, only: [:show]
  end
  resources :occupants, only: [:new, :create]

  get '/occupants/show', to: 'occupants#show'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  #post "/establishments/:establishment_id/occupents/:id", to: 'occupants#add_good'

  root 'sessions#new'

end
