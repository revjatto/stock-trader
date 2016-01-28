Rails.application.routes.draw do
  

  devise_for :users
  
  get 'welcomes/index'
  
  root 'welcomes#index'
  
  resources :users

  get 'my_portfolio', to: "users#my_portfolio"
  
get 'search_stocks', to: "stocks#search"
  
end
