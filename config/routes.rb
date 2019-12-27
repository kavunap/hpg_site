Rails.application.routes.draw do
  get 'services/discount'
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
  root 'messages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
