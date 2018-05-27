Rails.application.routes.draw do
  resources :usertypes
  resources :publicplacetypes
  resources :addresstypes
  resources :ictypes
  resources :persontypes
  resources :people
    
  root 'home#home'
  get 'about', to: 'home#about'
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
