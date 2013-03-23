Codegain::Application.routes.draw do

  devise_for :users


  match "/dashboard/download" => "dashboard#download"
  match "/dashboard/approval" => "dashboard#approval"
  match "/dashboard/roster" => "dashboard#roster"
  match "/dashboard/approve" => "dashboard#approve", :via => [:get]

  resources :messages
  resources :dashboard 
  resources :users
  resources :quizzes
  resources :assignments

  scope "/dashboard" do
    resources :students
  end

  root :to => 'home#index'


end
