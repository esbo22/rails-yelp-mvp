Rails.application.routes.draw do
    namespace :super_admin do
    resources :users, only: [:new, :create, :destroy]
  end

  namespace :admin do
    resources :restaurants, only: [:index]
  end

  resources :restaurants do
    collection do
      get "top"
    end

    member do
      get "chef"
    end

    resources :reviews, only: [:new, :create, :index]
  end

  resources :reviews, only: [:edit, :update, :show, :destroy]
end
