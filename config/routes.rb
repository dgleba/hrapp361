Rails.application.routes.draw do
 
  resources :pp_parkingpasses
  resources :dc_disciplines
  resources :employees
  resources :dc_streams
  resources :dc_levels
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'



  # mount RailsAdmin::Engine => '/radmin', as: 'rails_admin'

  resources :roles
 
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # devise_for :users
  
  root "home#about"


  # root "home#audit_count"
  #get "surveys/index"

   get 'home/index'
   get 'home/about'

   
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
