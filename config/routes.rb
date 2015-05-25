Rails.application.routes.draw do
  devise_for :users
  resources :homes
  resources :photos

  resources :shops do
        resources :furnitures 
     end

   
  resources :users
   
  resources :comments

   root to: 'homes#index'
  
end
