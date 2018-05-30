Rails.application.routes.draw do
  resources :user_types
  resources :address_types
  resources :public_place_types
  resources :person_types
  resources :ic_types
  resources :people
    
  root 'home#home'
  get 'about', to: 'home#about'
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
