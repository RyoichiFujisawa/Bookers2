Rails.application.routes.draw do
  devise_for :users
  root 'homes#home'  #ログイン後の操作
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books
  resources :users, only: [:show, :edit, :update, :index]
  get "home/about", to: "homes#about"
end
