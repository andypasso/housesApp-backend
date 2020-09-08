Rails.application.routes.draw do
  resources :houses
  resources :favorites
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  post 'favorites/:id', to: 'favorites#create'
  put '/create/admin/:id', to: 'admins#update'
end
