ClothStore::Application.routes.draw do

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
