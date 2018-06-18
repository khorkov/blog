Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :contacts, only: %i[new create]
  resources :tags, only: [:show]
  root 'welcome#index'

  get '*path' => redirect('/')
end
