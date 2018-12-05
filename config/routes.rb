Rails.application.routes.draw do
  resources :tokens, only: :new
  resources :users, only: :new
  resources :chat_rooms, only: [:new, :create, :show, :index]
  resources :private_chat_rooms, except: [:update, :edit, :destroy]
  resources :multi_user_private_chat_rooms
  resources :multi_user_memberships
  mount ActionCable.server => '/cable'
  root 'chat_rooms#index'
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post 'register', to: 'users#create'
      post 'token', to: 'tokens#create'
      delete 'token', to: 'tokens#destroy'
    end
  end
end
