Rails.application.routes.draw do
  root :to => 'homes#top'
  devise_for :users


  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resources :post_comments, only: [:create, :destroy]
  end


  resources :users, only: [:show, :edit, :update]
  # get 'homes/sign_in'
  # get 'homes/sign_up'
  # get 'homes/post_images'
  # get 'homes/users'
  # get 'homes/new'
  # get 'homes/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get '/homes/about' => "homes#about", as:'about'
end
