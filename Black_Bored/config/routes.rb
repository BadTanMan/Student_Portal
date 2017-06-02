Rails.application.routes.draw do
  devise_for :users

  resources :articles
  mount ActionCable.server => '/cable'

  root 'articles#index'
end
