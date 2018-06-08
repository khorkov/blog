Rails.application.routes.draw do
  resources :posts
  get 'welcome/index'
  root 'welcome#index'

  get '*path' => redirect('/')
end
