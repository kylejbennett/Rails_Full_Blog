Rails.application.routes.draw do

  get '/' => "home#index"
  get '/search' => "home#search"
  get '/results' => "home#results"
  
  resources :users
  resources :posts
  resources :comments

end
