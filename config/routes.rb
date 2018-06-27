Rails.application.routes.draw do
  get 'welcome/index'
  get 'cakes/new'
  resources :cakes
  root 'welcome#index'
  resources :cakes do
  resources :comments
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
