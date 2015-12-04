Rails.application.routes.draw do
  get 'categories' => 'categories#index', :as => 'categories'

  root :to => "items#index"
	
	post 'users/new' => 'users#create'

  resources :users
  resources :items
end
