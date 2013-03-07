Codegain::Application.routes.draw do

  devise_for :users

  resources :messages
  resources :dashboard

  root :to => 'home#index'

end
