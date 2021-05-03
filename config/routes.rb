Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :steps, only: [:index, :new, :create, :update, :destroy]
  resources :skills, only: [:index, :new, :create, :update, :destroy]
  resources :documents, only: [:index, :new, :create, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
