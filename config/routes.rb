Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts do
    resources :bids, only: [:create , :update ]
    resources :reviews, only: [ :new, :create ]
  end

  resources :users, only: [:show, :edit, :update]
  get "users/:id/dashboard", to: "users#dashboard", as: :dashboard

  resources :chatrooms, only: [:show, :create] do
    resources :messages, only: :create
  end

end
