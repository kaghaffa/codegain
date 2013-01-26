Codegain::Application.routes.draw do
  resources :home, :messages

  match 'home' => 'home#new', :as => 'home', :via => :get
  match 'home' => 'home#create', :as => 'home', :via => :post

  root :to => "home#index"
end
