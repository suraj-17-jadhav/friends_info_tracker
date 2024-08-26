Rails.application.routes.draw do
  devise_for :users
  resources :friends
  get '/about' , to: 'home#about'
  root "home#index"
end
