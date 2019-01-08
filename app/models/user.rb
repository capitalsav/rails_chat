class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :display_name, presence: true
  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy

  has_many :memberships
  has_many :private_chat_rooms, through: :memberships
  has_many :private_messages, dependent: :destroy

  has_many :multi_user_memberships
  has_many :multi_user_private_chat_rooms, through: :multi_user_memberships
  has_many :multi_user_messages, dependent: :destroy

  has_many :users, class_name: 'Contact', foreign_key: 'user_id'
  has_many :contacts, class_name: 'Contact', foreign_key: 'contact_id'
end
