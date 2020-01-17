Rails.application.routes.draw do
  resources :posts
  resources :requests
  get 'home', to: 'requests#home', as: 'home'
  get 'services/discount'
  get 'requests/home'
  get 'services/services'
  get 'services/contact'
  get 'services/products'
  get 'services/shipping'
  get 'services/motor_loan'
  resources :messages
  resource :session, only: %i[new create destroy]
  get 'signup', to: 'users#new', as: 'signup'
  
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :users
  root 'requests#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
