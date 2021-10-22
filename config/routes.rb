Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/edit'
  get 'users/update'
  get 'books/index'
  get 'books/show'
  get 'books/edit'
  get 'books/update'
  get 'books/destroy'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to:"homes#top"

  get '/home/about' => "homes#about"

  resources:books,only:[:create, :index, :show, :edit, :update, :destroy]

  resources:users,only:[:index, :show, :edit, :update]





end