Rails.application.routes.draw do
  root :to => "items#index"
	
	post 'users/new' => 'users#create'

  resources :users
  resources :items
end
