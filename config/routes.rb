Rails.application.routes.draw do


  #POST/signup
post '/signup', to: 'users#create'
#GET /me
get '/me', to: 'users#show'

#get/index
get '/users',  to: 'users#index'

#POST /login
post '/login', to: 'sessions#create'

#DELETE /logout

delete '/logout', to: 'sessions#destroy'

  post '/sign_up', to: "users#create"
  resources :users, except: [:new]

  # get '/parks', to: 'parks#index'
  # post '/park', to: 'parks#create'

  # get '/park[id]', to:'parks#show'
  get '/parks[:id]/campsites', to: 'campsites#index'

  resources :campsites, only: [:index, :show]
  resources :parks, only: [:index, :show]

  get '/itinerary', to: 'reservations#index'
  get 'itinerary/:id', to: 'reservations#show'
  post 'parks/reservations', to: 'reservations#create'
  patch  'itinerary/:id', to: 'reservations#update'
  delete	'itinerary/:id', to: 'reservations#destroy'

  resources :reservations, only: [:create, :update, :destroy]

end

