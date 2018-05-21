# == Schema Information
#
# Table name: private_messages
#
#  id                   :bigint(8)        not null, primary key
#  content              :text
#  user_id              :bigint(8)
#  private_chat_room_id :bigint(8)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class PrivateMessage < ApplicationRecord
  belongs_to :user
  belongs_to :private_chat_room

  validates :content, presence: true, length: {minimum: 2, maximum: 1000}

  after_create_commit { PrivateMessageBroadcastJob.perform_later(self) }

  def timestamp
    created_at.strftime('%H:%M:%S %d %B %Y')
  end
end
