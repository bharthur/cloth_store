ClothStore::Application.routes.draw do

  devise_for :admins
  
  root :to => "pages#home"

end
