Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  resources :orders, only: [:index]
  resources :stores, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
