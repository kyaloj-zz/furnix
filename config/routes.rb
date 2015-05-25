Rails.application.routes.draw do
  devise_for :users
  resources :homes
  resources :photos
  

  resources :furnitures do
      resources :comments
   end
  resources :shops
  resources :users
   


   root to: 'homes#index'
  
end
