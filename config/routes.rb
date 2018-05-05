Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  resources :users
  resources :chat_rooms, only: [:new, :create, :show, :index]
  resources :private_chat_rooms, except: [:update, :edit, :destroy]
  resources :multi_user_private_chat_rooms
  resources :multi_user_memberships
  get 'search', to: 'private_chat_rooms#search'
  get 'about', to: 'static_pages#about', as: 'about'
  mount ActionCable.server => '/cable'
  root 'chat_rooms#index'
end
