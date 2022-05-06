Rails.application.routes.draw do
  get 'cart/show'
  resources :shops , only: [:index, :show]
  resources :products
  resources :order_items
  resource :cart, only: [:show]
  resource :social, only: [:show]
  resources :success

  root 'shops#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
