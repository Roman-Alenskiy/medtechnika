Rails.application.routes.draw do
  #Devise
  Rails.application.routes.draw do
    devise_for :admins, controllers: {
      sessions: 'admins/sessions'
    }
  end
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
  get '/manager/requests', to: 'control_panels#requests'
  get '/manager/edit', to: 'admin_edit#edit'
  patch '/manager/edit', to: 'admin_edit#update'
  # Online requests
  post 'online_requests/:id/completed', to: 'online_requests#completed'
  post 'online_requests/:id/uncompleted', to: 'online_requests#uncompleted'
  resources :online_requests
end
