class ChatRoom < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :messages, as: :messageable, dependent: :destroy
end
