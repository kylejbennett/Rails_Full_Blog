Rails.application.routes.draw do

  get '/' => "home#index"
  get '/search' => "home#search"
  get '/results' => "home#results"
  get '/login', to: 'sessions#new'
  get '/users/password' => 'users#password'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'
  put '/users/:id', to: 'users#update'
  patch '/users/:id', to: 'users#update'
  delete '/users/:id', to: 'users#destroy'
  

  resources	:sessions
  resources :users
  
  resources :posts do
    resources :comments
  end 

end
