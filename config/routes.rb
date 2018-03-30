Rails.application.routes.draw do
  resources :sizes
  #Root Index
  root 'home#index'


  #admin
  get 'admin' => 'admin#index'

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




  get 'pages/productsPage'

  get 'pages/customersPage'

  get 'pages/colorsPage'

  get 'pages/materialsPage'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
