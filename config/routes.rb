Rails.application.routes.draw do
  devise_for :users 
  resources :goods
  resources :consent_forms
  resources :consent_form_types
  resources :donations
      get  'confirm_donation', to: 'donations#confirm'
      post 'confirm_donation', to: 'donations#confirm'
      get  'collect_donation', to: 'donations#collect'
      post 'collect_donation', to: 'donations#collect'
      get  'abort_donation', to: 'donations#abort'
      post 'abort_donation', to: 'donations#abort'
    
  resources :cities
  resources :states
  resources :countries
  resources :volunteers
    get 'volunteer', to: 'volunteers#menu'
  resources :suppliers
  resources :consumers
  resources :donors
    get 'donor', to: 'donor#donor'
	get 'donate', to: 'donor#donate'
	get 'track_donations', to: 'donor#track_donations'
	get 'list_donations', to: 'donor#list_donations'

 
  resources :donation_campaigns
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
  resources :assignment_types
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
    
  get 'main_tables_management', to: 'management#main_tables'
  get 'manager_management', to: 'management#manager'
  get 'volunteer_management', to: 'management#volunteer'
  get 'supplier_management', to: 'management#supplier'
  get 'donee_management', to: 'management#donee'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
