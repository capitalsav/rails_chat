# == Schema Information
#
# Table name: multi_user_memberships
#
#  id                              :bigint(8)        not null, primary key
#  multi_user_private_chat_room_id :bigint(8)
#  user_id                         :bigint(8)
#  created_at                      :datetime         not null
#  updated_at                      :datetime         not null
#

class MultiUserMembership < ApplicationRecord

  belongs_to :user
  belongs_to :multi_user_private_chat_room

  validates_uniqueness_of :multi_user_private_chat_room_id, scope: :user_id

end
