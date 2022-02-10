Rails.application.routes.draw do
  # get 'archives/index'
  resources :sticky_notes
  get 'home/about'
  # root 'home#index'
  root 'archives#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
