# == Schema Information
#
# Table name: multi_user_messages
#
#  id                              :bigint(8)        not null, primary key
#  content                         :text
#  user_id                         :bigint(8)
#  multi_user_private_chat_room_id :bigint(8)
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#

class MultiUserMessage < ApplicationRecord
  belongs_to :user
  belongs_to :multi_user_private_chat_room

  validates :content, presence: true, length: {minimum: 2, maximum: 1000}

  after_create_commit { MultiUserMessageBroadcastJob.perform_later(self) }

  def timestamp
    created_at.strftime('%H:%M:%S %d %B %Y')
  end
end
