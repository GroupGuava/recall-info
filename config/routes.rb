Rails.application.routes.draw do
  devise_for :users, :controllers => { sessions: 'users/sessions' }

  get '/items/:tag' => "items#tag", :as => 'tag_items'

  root :to => "items#index"
	
	get '/about' => 'static#about'

  resources :items
end
