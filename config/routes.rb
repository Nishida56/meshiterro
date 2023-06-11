Rails.application.routes.draw do
  resources :post_images, only: [:new, :index, :show]

  devise_for :users
  get 'homes/sign_in'
  get 'homes/sign_up'
  get 'homes/post_images'
  get 'homes/users'
  get 'homes/new'
  get 'homes/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => 'homes#top'
  get '/homes/about' => "homes#about", as:'about'
end
