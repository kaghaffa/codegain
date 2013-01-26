Codegain::Application.routes.draw do
  resources :home

  match 'contact' => 'contact#new', :as => 'contact', :via => :get
  match 'contact' => 'contact#create', :as => 'contact', :via => :post

  root :to => "home#index"
end
