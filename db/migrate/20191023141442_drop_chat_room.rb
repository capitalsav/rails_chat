class DropChatRoom < ActiveRecord::Migration[5.1]
  def change
    drop_table :chat_rooms, force: :cascade
  end
end
