class UpgradeMessagesToBePolymorphic < ActiveRecord::Migration[6.1]
  def change
    rename_column :messages, :chat_room_id, :messageable_id
    add_column :messages, :messageable_type, :string
  end
end
