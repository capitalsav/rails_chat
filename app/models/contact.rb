class Contact < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :contact, class_name: 'User'

  def self.current_user_contacts(user)
    user.users.map { |x| User.where(id: x.contact_id).select('email', 'avatar', 'first_name', 'last_name', 'display_name') } +
        user.contacts.map { |x| User.where(id: x.user_id).select('email', 'avatar', 'first_name', 'last_name', 'display_name')  }
  end
end

