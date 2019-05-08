Rails.application.routes.draw do
  resources :accounts, :comments_of_comments, :comments, :articles
  resources :items, :only => [:index, :new, :create, :destroy]
<<<<<<< HEAD
  resources :diaries
=======
  root 'top#index'
>>>>>>> 30fde715144b4821e56818ee9f562fa763f3663f
end
