Rails.application.routes.draw do
  resources :accounts, :comments_of_comments, :comments, :articles
  resources :items, :only => [:index, :new, :create, :destroy]
  resources :diaries
  root 'top#index'
end
