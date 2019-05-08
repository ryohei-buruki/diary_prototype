Rails.application.routes.draw do
  resources :accounts, :diaries, :articles, :comments, :comments_of_comments
  resources :items, :only => [:index, :new, :create, :destroy]
  root 'top#index'
end
