Rails.application.routes.draw do
  resources :profiles
  resources :volunteers
  resources :suppliers
  resources :consumers
  resources :donors
  devise_for :user
  #devise_for :installs
  resources :donation_campaigns
  resources :signups
  resources :address_cocoons
  resources :person_cocoons
  resources :services
  resources :ranks
  resources :form_contacts
  resources :addresses
  resources :private_place_types
  resources :public_places
  resources :supply_food_configurations
  resources :postal_code_hints
  get 'postal_code_hints_search', to: 'postal_code_hints#search'
  post 'postal_code_hints_search', to: 'postal_code_hints#search'
  resources :measure_units
  resources :good_types
  resources :levels
  resources :logs
  resources :user_types
  resources :address_types
  resources :public_place_types
  resources :person_types
  resources :ic_types
  resources :people
  resources :assingment_types
  resources :form_contacts
    
  root 'splash#splash'
  get 'home', to: 'home#home'
  get 'about', to: 'home#about'
  get 'my_jquery_test', to: 'home#my_jquery_test'
  get 'point_hunger', to: 'home#point_hunger'
  
  if Rails.env.development?
       get 'testbootstrap', to: 'home#testbootstrap'
  end
 
    
 
    
  get 'foodhandling', to: 'home#foodhandling'
  get 'news', to: 'home#news'
  get 'legal', to: 'home#legal'
  get 'services', to: 'home#services'
  get 'valueofdonation', to: 'home#valueofdonation'
    
  get 'management', to: 'management#management'
    
  get 'donor', to: 'donor#donor'
  get 'donate', to: 'donor#donate'
  get 'track_donations', to: 'donor#track_donations'
  get 'list_donations', to: 'donor#list_donations'

  get 'donor', to: 'donor#donor'
    
  get 'volunteer', to: 'volunteers#menu'

    
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
