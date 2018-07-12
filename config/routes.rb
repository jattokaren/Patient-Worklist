Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'encounters#index'
  
  get 'static_pages/about'

  #Nested Resource
  resources :encounters, only: [:index, :show] do 
  	resources :notes 	
  end

end