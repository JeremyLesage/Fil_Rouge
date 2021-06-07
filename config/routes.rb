Rails.application.routes.draw do
  resources :avis
  resources :cryptomonaies
  devise_for :users
  root to: 'pages#home'
  get '/qui_sommes_nous', to: 'pages#qui_sommes_nous'
  get '/contact', to: 'pages#contact'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
