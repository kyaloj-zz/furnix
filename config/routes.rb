Rails.application.routes.draw do
devise_for :users, controllers: {registrations: "users/registrations"}  # devise_for :users
  resources :homes
  resources :photos

  resources :shops do
            resources :furnitures 
                
           end

  resources :furnitures do
   resources :comments
 end

 
  resources :users
   
  

   root to: 'homes#index'
  
end
