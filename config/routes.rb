Rails.application.routes.draw do
  # get 'users/show'
  # get 'users/edit'
  # get 'books/new'
  # get 'books/index'
  # get 'books/show'
  # get 'books/edit'
  devise_for :users

  resources :books, only: [:new, :index, :show, :edit, :destroy, :create, :update]
  resources :users, only: [:show, :edit, :index,:update]
 root to: "homes#top"
  get "/home/about" => "homes#about", as: "about"
  # get 'books/:id/edit' => 'books#edit', as: 'edit_book'
  patch 'books/:id' => 'books#update', as: 'update_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
