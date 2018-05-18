# == Schema Information
#
# Table name: memberships
#
#  id                   :bigint(8)        not null, primary key
#  private_chat_room_id :bigint(8)
#  owner_id             :bigint(8)
#  member_id            :bigint(8)
#

class Membership < ApplicationRecord
  belongs_to :owner, class_name: 'User'
  belongs_to :member, class_name: 'User'
  belongs_to :private_chat_room
  validates_uniqueness_of :owner_id, scope: :member_id
end
