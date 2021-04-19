Rails.application.routes.draw do
  #user routes
  resources :users

  #sessions routes 
  get '/', to: 'sessions#welcome'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'


end
