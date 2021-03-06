Rails.application.routes.draw do
  devise_for :users
  resources :sticky_notes
  resources :public_sticky_notes, only: [:index, :show]
  get 'home/about'
  root 'public_sticky_notes#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
