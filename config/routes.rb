Codegain::Application.routes.draw do

  devise_for :users

  get "/dashboard/course_materials"

  match "/dashboard/download" => "dashboard#download"

  resources :messages
  resources :dashboard

  root :to => 'home#index'


end
