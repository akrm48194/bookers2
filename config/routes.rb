Rails.application.routes.draw do
  devise_for :users
 root to: "homes#top"
get "/home/about" => "homes#about", as: "about"
  
  resources :books, only: [:new, :index, :show, :edit, :destroy, :create, :update] do
  resource :favorites, only: [:create, :destroy]
  resources :book_comments, only: [:create, :destroy]
end
  resources :users, only: [:show, :edit, :index,:update]

  patch 'books/:id' => 'books#update', as: 'update_book'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end