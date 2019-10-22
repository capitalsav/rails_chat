class DropMultiUserMessage < ActiveRecord::Migration[5.1]
  def change
    drop_table :multi_user_messages
  end
end
