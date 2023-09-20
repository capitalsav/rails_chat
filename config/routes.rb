Rails.application.routes.draw do
  devise_for :users
  
  devise_scope :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end

  resources :chat_rooms, only: [:new, :create, :show, :index]
  resources :private_chat_rooms, except: [:update, :edit, :destroy]
  resources :multi_user_private_chat_rooms
  resources :multi_user_memberships
  mount ActionCable.server => '/cable'
  root 'chat_rooms#index'
end
