Rails.application.routes.draw do
  devise_for :users

  devise_for :models

  post 'search' => 'products#search'
  get 'products/search' => 'products#search', as: 'search_products'


  mount RailsAdmin::Engine => '/adminpage', as: 'rails_admin'





  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  #Root Index
  root 'homes#index', controller: 'homes'
  #root 'reservations#index'

  get 'search' => 'products#show'


  #admin
  get 'admin' => 'admin#index'



  resources :sizes
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




  get 'pages/about'
  get 'pages/productsPage'
  get 'pages/customersPage'
  get 'pages/colorsPage'
  get 'pages/materialsPage'
  get 'pages/reportsPage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
