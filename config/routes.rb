Rails.application.routes.draw do
  namespace :api, defaults: {format: :json} do
    resources :users, only: [:create, :show]
    resource :session, only: [:create, :destroy]
    resources :businesses, only: [:index, :show]
    resources :reviews, only: [:index, :show, :create, :update, :destroy]
  end
  root to: "static_pages#root"
end
