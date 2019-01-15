Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'encounters#index'
  
  get 'about', to: 'static_pages#about'

  get 'contact', to: 'static_pages#contact' #WORKS

  #get 'providerdetail/:npi', to: 'providerdetail#npi'  
  get 'providerdetails/:npi', to: 'static_pages#npi' #routes
  	#@npi = params[:npi] #controller

  #Nested Resource
  resources :encounters, only: [:index, :show] do 
  	resources :notes 	
  end

end