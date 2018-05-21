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

require 'rails_helper'
RSpec.describe MultiUserMembership, type: :model do
  it 'Membership belong to User(owner) by foreign key user_id' do
    expect(subject).to belong_to(:user)
  end
  it 'Membership belong to User(member) by foreign key user_id' do
    expect(subject).to belong_to(:multi_user_private_chat_room)
  end
end
