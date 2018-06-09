Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :contacts, only: %i[new create]
  root 'welcome#index'

  get '*path' => redirect('/')
end
