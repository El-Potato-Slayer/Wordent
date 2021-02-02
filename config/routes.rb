Rails.application.routes.draw do
  # get 'votes/new'
  # get 'votes/create'
  # get 'votes/destroy'
  devise_for :users
  resources :categories
  resources :articles do
    resources :votes
  end
  root to: "articles#index"
end
