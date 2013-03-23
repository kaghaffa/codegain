Codegain::Application.routes.draw do

  devise_for :users


  match "/dashboard/download" => "dashboard#download"
  match "/dashboard/approval" => "dashboard#approval"
  match "/dashboard/approve" => "dashboard#approve", :via => [:get]

  resources :messages
  resources :dashboard
  resources :users

  root :to => 'home#index'


end
