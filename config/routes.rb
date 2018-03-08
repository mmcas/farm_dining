Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :ingredients, only: [:index, :show]
  resources :farms, only: :show

  resources :restaurants, only: [] do
  end

  resources :orders, only: [:new, :show, :create, :destroy, :update, :edit ]

  resources :shopping_baskets, only: [] do
    resources :payments, only: [:create]
  end

  get '/checkout', to: "shopping_baskets#show", as: :checkout

end
