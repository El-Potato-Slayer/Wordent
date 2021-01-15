Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :articles
  root to: "articles#index"
end
