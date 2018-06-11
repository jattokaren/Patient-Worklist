Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'encounters#index'

  # nested resources
  resources :encounters, only: [:index, :show] do 
  	resources :notes 	
  end

end