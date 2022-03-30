Rails.application.routes.draw do
  get 'public_sticky_notes/index'
  devise_for :users
  resources :sticky_notes
  get 'home/about'
  root 'public_sticky_notes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
