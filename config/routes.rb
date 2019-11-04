Rails.application.routes.draw do
  get 'static_pages/chats'

  devise_for :users
  mount ActionCable.server => '/cable'
  root 'static_pages#chat_rooms'
end
