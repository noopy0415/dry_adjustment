Rails.application.routes.draw do
  resources :tasks
  resources :adjs do
    get 'container_shipment', on: :member
    get 'bag_shipment', on: :member
    get 'half_shipment', on: :member
  end
  resources :dries
  root "manu#manu"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
