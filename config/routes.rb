Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'sessions/new'
  resources :users
  resources :posts
  resources :comments
  resources :chats
  # get '/chat_messages', to 'chat#'
  end
