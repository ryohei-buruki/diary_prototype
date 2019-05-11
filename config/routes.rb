Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callbacks =>  "users/omniauth_callbacks"
  }
  resources :accounts, :comments, :articles, :diaries
  resources :items, :only => [:index, :new, :create, :destroy]
  root 'top#index'
end
