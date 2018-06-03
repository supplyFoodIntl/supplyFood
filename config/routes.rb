Rails.application.routes.draw do
  resources :form_contacts
  resources :addresses
  resources :private_place_types
  resources :public_places
  resources :supply_food_configurations
  resources :postal_code_hints
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
  resources :users
  resources :assingment_types
  resources :form_contacts
    
  root 'splash#splash'
  get 'home', to: 'home#home'
  get 'about', to: 'home#about'
    
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'    
    
  get 'signup', to: 'users#new'
  get 'signup_address', to: 'users#new_address'
  get 'signup_personal_info', to: 'users#new_personal_info'
    
  get  'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  get  'signout', to: 'sessions#destroy'
    
  get 'foodhandling', to: 'home#foodhandling'
  get 'news', to: 'home#news'
  get 'legal', to: 'home#legal'
  get 'services', to: 'home#services'
  get 'valueofdonation', to: 'home#valueofdonation'
    
  get 'management', to: 'management#management'
  get 'donor', to: 'donor#donor'
  get 'volunteer', to: 'volunteer#volunteer'

    
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
