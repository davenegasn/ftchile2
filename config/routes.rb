Rails.application.routes.draw do

  root 'pages#index'
  get 'pages', :to => 'pages#index'
  get 'admin', :to => 'access#menu'
  get 'access/login'
  post 'access/attempt_login', :to => 'access#attempt_login'
  get 'access/logout'

  resources :proformas do
    member do
      get :delete
    end 
  end 

  resources :users do
    member do
      get :delete
    end 
  end 

  resources :cities do
    member do
      get :delete
    end 
  end 

  resources :articles do
    collection do 
      get 'get_ajax_price'
    end 
    member do
      get :delete
    end 
  end 

  resources :suppliers do
    collection do
      get 'get_ajax_supplier'
    end
    member do
      get :delete
    end 
  end 

  resources :comunas do
    member do
      get :delete
    end 
  end 

  resources :clientes do
    collection do
      get 'get_ajax_cliente'
    end
    member do
      get :delete
    end 
  end 



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
