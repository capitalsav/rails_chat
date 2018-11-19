class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  has_secure_password

  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy

  has_many :memberships
  has_many :private_chat_rooms, through: :memberships
  has_many :private_messages, dependent: :destroy

  has_many :multi_user_memberships
  has_many :multi_user_private_chat_rooms, through: :multi_user_memberships
  has_many :multi_user_messages, dependent: :destroy

  has_many :tokens, dependent: :delete_all

  validates :email, :password, :display_name, :first_name, :last_name, presence: true
  validates :password, length: { minimum: 6 }
  validates :display_name, length: { minimum: 2 }
  validates :display_name, length: { maximum: 50 }
  validates :email, format: /\A[a-zA-Z0-9.\-_]{1,}@[a-zA-Z0-9]{1,}.[a-z]{2,}/
  validates :display_name, :email, uniqueness: { case_sensitive: false }
end
