# == Schema Information
#
# Table name: chat_rooms
#
#  id         :bigint(8)        not null, primary key
#  title      :string
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ChatRoom < ApplicationRecord
  validates :title, presence: true
  belongs_to :user
  has_many :messages, dependent: :destroy
end
