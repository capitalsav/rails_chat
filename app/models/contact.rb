class Contact < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :contact, class_name: 'User'

  def self.current_user_contacts(user)
    users = user.users.map do |user_item|
      User.where(id: user_item.contact_id).select(
        'email', 'avatar', 'first_name', 'last_name', 'display_name'
      ).first
    end
    contacts = user.contacts.map do |contact_item|
      User.where(id: contact_item.user_id).select(
        'email', 'avatar', 'first_name', 'last_name', 'display_name'
      ).first
    end
    # p users
    # p contacts
    # p (users + contacts)
    # p (users + contacts).to_json
    (users + contacts)
  end
end

