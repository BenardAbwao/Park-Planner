Rails.application.routes.draw do

  post '/sign_up', to: "users#create"
  resources :users, except: [:new]

  # get '/parks', to: 'parks#index'
  # post '/park', to: 'parks#create'

  # get '/park[id]', to:'parks#show'
  get 'parks[:id]/campsites', to: 'campsites#index'

  resources :campsites, only: [:index, :show]
  resources :parks, only: [:index, :show]

end
