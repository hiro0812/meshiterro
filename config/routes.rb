Rails.application.routes.draw do
  #
  devise_for :users
  # homesのtop-controller
  root to: "homes#top"

  get  'homes/about', to: 'homes#about', as: 'about'
  # post_imageとpost_comment（親子関係）のmodel-controller
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorites, only: [:create, :destroy]

    resources :post_comments, only: [:create, :destroy]
  end
  # userのmodel-controller
  resources :users, only: [:show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
