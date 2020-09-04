Rails.application.routes.draw do
  resources :houses
  post 'auth/login', to: 'authentication#authenticate'
  post 'signup', to: 'users#create'
  post 'favorite/:id', to: 'favorites#create'

end
