Rails.application.routes.draw do
  #
  devise_for :users
  # homesのtop-controller
  root to: "homes#top"

  get  'homes/about', to: 'homes#about', as: 'about'
  # postlmageのmodel-controller
  resources :post_images, only: [:new, :create, :index, :show, :destroy]
  # userのmodel-controller
  resources :users, only: [:show, :edit]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
