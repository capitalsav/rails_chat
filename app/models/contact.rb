class Contact < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :contact, class_name: 'User'

  def self.current_user_contacts(user)
    user.users.map { |x| User.find_by(id: x.contact_id) } +
        user.contacts.map { |x| User.find_by(id: x.user_id) }
  end
end

