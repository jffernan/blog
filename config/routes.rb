Rails.application.routes.draw do
  get 'welcome/home'

  resources :articles

  resources :articles do #nested resource within articles
  resources :comments
  end

  root 'welcome#home'
end
