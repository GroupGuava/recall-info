Rails.application.routes.draw do
  devise_for :users, :controllers => { sessions: 'users/sessions' }
  get 'categories' => 'categories#index', :as => 'categories'

  root :to => "items#index"
	
	get '/about' => 'static#about'

  resources :items
end
