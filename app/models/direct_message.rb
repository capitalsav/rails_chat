class DirectMessage < ApplicationRecord
  has_many :direct_messages_relations
  has_many :users, through: :direct_messages_relations
end
