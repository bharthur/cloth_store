ClothStore::Application.routes.draw do

  devise_for :admins

  get "products/show"

  get "products/index"

  get "categories/index"

  get "categories/show"

  root :to => "pages#home"
end
