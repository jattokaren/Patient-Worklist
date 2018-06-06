Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'encounters#index'

  resources :encounters do #nested resources
  	resources :notes 	
  end

end
