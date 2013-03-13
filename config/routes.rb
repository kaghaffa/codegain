Codegain::Application.routes.draw do

  devise_for :users

  match "/dashboard/download" => "dashboard#download"

  resources :messages
  resources :dashboard

  root :to => 'home#index'


end
