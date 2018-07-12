Rails.application.routes.draw do
  #Root
  root 'static_pages#about'
  #Static pages
  get '/contacts',    to: 'static_pages#contacts'
  get '/about',   to: 'static_pages#about'
  get '/history', to: 'static_pages#history'
  #Categories
  resources :categories
  #Products
  resources :products
  #Control panels
  get '/manager', to: 'control_panels#about_console'
  get '/manager/products', to: 'control_panels#products'
  get '/manager/categories', to: 'control_panels#categories'

end
