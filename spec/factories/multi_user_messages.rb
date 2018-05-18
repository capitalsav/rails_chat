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

FactoryBot.define do
  factory :multi_user_message do |f|
    f.content Faker::Lorem.sentence
  end
end
