Rails.application.routes.draw do
  devise_for :users
  resources :posts
  resources :contacts, only: %i[new create]
  resources :tags, only: [:show]
  resources :categories
  root 'welcome#index'

  get 'feeds', to: 'welcome#index', format: 'rss'
  get 'sitemap' => 'welcome#sitemap'
  get 'robots' => 'welcome#robots', format: :text

  get '*path' => redirect('/')
end
