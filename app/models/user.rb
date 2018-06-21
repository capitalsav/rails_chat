class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
         :validatable, :confirmable

  has_many :chat_rooms, dependent: :destroy
  has_many :messages, dependent: :destroy

  has_many :memberships
  has_many :private_chat_rooms, through: :memberships
  has_many :private_messages, dependent: :destroy

  has_many :multi_user_memberships
  has_many :multi_user_private_chat_rooms, through: :multi_user_memberships
  has_many :multi_user_messages, dependent: :destroy

  def password_required?
    super if confirmed?
  end

  def password_match?
    errors[:password] << "can't be blank" if password.blank?
    errors[:password_confirmation] << "can't be blank" if password_confirmation.blank?
    errors[:password_confirmation] << 'does not match password' if password != password_confirmation
    password == password_confirmation && password.present?
  end
end
