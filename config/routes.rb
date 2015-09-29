Rails.application.routes.draw do

  get '/' => "home#index"
  get '/search' => "home#search"
  get '/results' => "home#results"
  get '/login', to: 'sessions#new'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  put '/users/:id', to: 'users#update'
  patch '/users/:id', to: 'users#update'



  resources	:sessions
  resources :users
  resources :posts  

end
