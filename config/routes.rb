Rails.application.routes.draw do
  root 'pages#index'
  get 'about', to: 'pages#about'
  get 'signup', to: 'users#new'
  get 'login', to: 'sessions#new'
  get 'home', to: 'pages#home'
  get 'contact_us', to: 'pages#contact_us'
  resources :articles
  resources :users, except: [:new]
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end
