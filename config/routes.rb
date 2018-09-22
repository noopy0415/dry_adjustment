Rails.application.routes.draw do
  resources :adjs
  resources :dries
  resources :tasks
  root "manu#manu"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
