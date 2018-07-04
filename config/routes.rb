Rails.application.routes.draw do
  get 'why-socket-chat', to: 'welcome_pages#why_socket_chat', as: 'why_socket_chat'
  get 'about-us', to: 'welcome_pages#about_us', as: 'about_us'
  get 'find-your-workspace', to: 'welcome_pages#find_your_workspace', as: 'find_your_workspace'

  devise_for :users, controllers: {
    confirmations: 'confirmations',
    registrations: 'registrations'
  }

  devise_scope :user do
    patch 'confirm', to: 'confirmations#confirm'
  end

  resources :user_profile

  get 'check-email', to: 'static_pages#check_email', as: 'check_email'

  resources :workspaces

  resources :chat_rooms, only: %i[new create show index]
  resources :private_chat_rooms, except: %i[update edit destroy]
  resources :multi_user_private_chat_rooms
  resources :multi_user_memberships
  mount ActionCable.server => '/cable'
  root 'welcome_pages#index_welcome'
end
