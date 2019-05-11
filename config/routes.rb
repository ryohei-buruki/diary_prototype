Rails.application.routes.draw do
  resources :accounts, :comments, :articles, :diaries
  resources :items, :only => [:index, :new, :create, :destroy]
  root 'top#index'
end
