Codegain::Application.routes.draw do

  devise_for :users


  match "/dashboard/download" => "dashboard#download"
  match "/dashboard/approval" => "dashboard#approval"

  resources :messages
  resources :dashboard

  root :to => 'home#index'


end
