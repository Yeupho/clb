Rails.application.routes.draw do
  #Root Index
  root 'home#index'




  resources :employee_statuses
  resources :employee_types
  resources :employees
  resources :customers
  resources :states
  resources :countries
  resources :customer_statuses
  resources :reservations
  resources :reservation_statuses
  resources :heels
  resources :product_statuses
  resources :colors
  resources :materials
  resources :products
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
