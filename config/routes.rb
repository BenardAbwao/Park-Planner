Rails.application.routes.draw do
  
  post '/sign_up', to: "users#create"
  resources :users, except: [:new]

  get '/parks', to: 'parks#index'
  post '/park', to: 'parks#create'
end
