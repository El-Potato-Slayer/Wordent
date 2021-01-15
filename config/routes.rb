Rails.application.routes.draw do
  resources :categories
  resources :articles
  root to: "articles#index"
end
