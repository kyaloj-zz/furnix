Rails.application.routes.draw do
  resources :homes
  resources :photos
  resources :comments
  resources :furnitures
  resources :shops
  resources :users
   

   root to: 'homes#index'
  
end
