Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  get 'static_pages/home'
  get 'static_pages/help'
  get 'static_pages/sign'
  get 'static_pages/signup'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy' 
  resources :users
  root "static_pages#home"# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
