Rails.application.routes.draw do
  devise_for :users
  get 'homes/sign_in'
  get 'homes/sign_up'
  get 'homes/post_images'
  get 'homes/users'
  get 'homes/new'
  get 'homes/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "homes#top"
end
