Rails.application.routes.draw do
  resources :wontons
  resources :advertisements
  resources :posts

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
