class Workspace < ApplicationRecord
  belongs_to :user, required: false
  has_many :users
  # has_many :channels
  # has_many :direct_messages
  attr_accessor :name, :subdomain
  validates :name, presence: true
  validates :subdomain, presence: true
  validates :user_id, presence: true
end
