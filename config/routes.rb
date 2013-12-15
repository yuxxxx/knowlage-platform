KnowlagePlatform::Application.routes.draw do
  root 'top#index'

  resources :comments, only: [:create]

  resources :questions, only: [:index, :show, :new, :create]

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
end
