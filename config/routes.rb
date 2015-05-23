Rails.application.routes.draw do
  devise_for :users
  resources :homes
  resources :photos
  resources :comments
  resources :furnitures
  resources :shops
  resources :users
   


   root to: 'homes#index'
  
end
