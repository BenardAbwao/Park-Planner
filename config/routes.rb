Rails.application.routes.draw do
  root to: "users#index"
  # get '/users', to: "users#index"
  # get '/sign_up', to: "users#new" 
  post '/sign_up', to: "users#create"
  resources :users, except: [:new]
end
