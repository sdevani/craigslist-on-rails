EbookSale::Application.routes.draw do

  resources :items do
    resource :item_order
    resource :rating
  end


  authenticated :user do
    root :to => 'items#index'
  end
  root :to => "items#index"
  devise_for :users
  resources :users
end
