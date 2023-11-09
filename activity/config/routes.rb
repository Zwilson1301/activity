Rails.application.routes.draw do
  get 'search/index'
  get 'dashboard/index'
  resources :devices
  resources :softwares
  resources :manufacturers
  resources :catigories
  resources :employees
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "dashboard#index"

end
