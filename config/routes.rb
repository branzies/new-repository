Rails.application.routes.draw do
  devise_for :models
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:'places#index'
  resources :places do
      resources :comments, only: :create
      resources :photos, only: :create
  end
end
