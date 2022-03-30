Rails.application.routes.draw do
  devise_for :users
  resources :sticky_notes
  get 'home/about'
  # root 'home#index'
  root 'sticky_notes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
