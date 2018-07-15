Rails.application.routes.draw do
  #Root
  root 'static_pages#about'
  #Static pages
  get '/contacts',    to: 'static_pages#contacts'
  get '/about',   to: 'static_pages#about'
  get '/history', to: 'static_pages#history'
  #Categories
  get '/categories/new', to: redirect('/manager/categories')
  resources :categories, only: [:show, :create, :edit, :update, :destroy]
  #Products
  get '/products/new', to: redirect('/manager/products/new')
  get '/products/:id/edit', to: 'control_panels#products_edit'
  resources :products
  #Control panels
  get '/manager', to: 'control_panels#about_panel'
  get '/manager/products', to: 'control_panels#products'
  get '/manager/products/new', to: 'control_panels#products_new'
  get '/manager/categories', to: 'control_panels#categories'
end
