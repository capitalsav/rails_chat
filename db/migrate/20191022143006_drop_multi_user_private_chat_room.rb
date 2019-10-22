class DropMultiUserPrivateChatRoom < ActiveRecord::Migration[5.1]
  def change
    drop_table :multi_user_private_chat_rooms
  end
end
