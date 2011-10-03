ClothStore::Application.routes.draw do


  get "products/show"

  get "products/index"

  get "categories/index"

  get "categories/show"

  devise_for :admins
  
  root :to => "pages#home"
	
	namespace :backend do
    root :to => "home#index"
    resources :categories
    resources :products
    resources	:occasions
    resources	:sizes
    resources	:images
    
  end

end
