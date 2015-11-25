Rails.application.routes.draw do
  get 'categories/index'

  root :to => "items#index"
	
	post 'users/new' => 'users#create'

  resources :users
  resources :items
end
