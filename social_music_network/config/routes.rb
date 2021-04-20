Rails.application.routes.draw do
  #user routes w/ nested playlist routes
  resources :users do
    resources :playlist
  end

  # Public playlist routes
  resources :playlist, only: [:index, :show]

  # Song Routes
  resources :songs, only: [:index, :show, :new, :create]
  


  #sessions routes redirects
  get '/', to: 'sessions#welcome'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'


end
