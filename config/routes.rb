ClothStore::Application.routes.draw do

  devise_for :admins
  
  root :to => "pages#home"

  resources :categories
  resources :products
  resources	:occasions
  resources :images
  resources :sizes
 
end
