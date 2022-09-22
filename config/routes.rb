Rails.application.routes.draw do
  #
  devise_for :users
  # homesのtop-controller
  root to: "homes#top"
  # postlmageのmodel-controller
  resources :post_images, only: [:new, :create, :index, :show]
  #
  get  'homes/about', to: 'homes#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
