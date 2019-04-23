class Contact < ApplicationRecord
  belongs_to :user, class_name: 'User'
  belongs_to :contact, class_name: 'User'

  def self.current_user_contacts(user)
    users = user.users.map { |x| User.find_by(id: x.contact_id) }
    contacts = user.contacts.map { |x| User.find_by(id: x.user_id) }

    (prepare_contacts_resp(users) + prepare_contacts_resp(contacts))
  end

  private

  def self.prepare_contacts_resp(users_arr)
    users_arr.map do |user_item|
      {
          "email": user_item.email,
          "avatar": user_item.avatar.url,
          "first_name": user_item.first_name,
          "last_name": user_item.last_name,
          "display_name": user_item.display_name
      }
    end
  end
end
