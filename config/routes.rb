Codegain::Application.routes.draw do

  devise_for :users

  resources :messages
  root :to => 'home#index'

end
