KnowlagePlatform::Application.routes.draw do
  root 'top#index'

  resources :comments, only: [:create]

  resources :categories do
    resources :questions, only: [:index, :show, :new, :create]
  end

  devise_for :users, controllers: { omniauth_callbacks: "users/omniauth_callbacks" }

  mount RailsAdmin::Engine => '/admin', :as => 'rails_admin'
end
