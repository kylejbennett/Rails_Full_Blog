Rails.application.routes.draw do

  get '/' => "home#index"
  
  resources :users
  resources :posts
  resources :comments

end
