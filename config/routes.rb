Rails.application.routes.draw do
  get 'categories' => 'categories#index', :as => 'categories'

  root :to => "items#index"
	
	post 'users/new' => 'users#create'
	
	get '/about' => 'static#about'

  resources :users
  resources :items
end
