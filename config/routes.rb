Rails.application.routes.draw do
 
  resources :dc_streams
  resources :dc_levels
  resources :stf_employees
  resources :dc_disciplines
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
