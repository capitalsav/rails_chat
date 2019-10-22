class DropPrivateMessage < ActiveRecord::Migration[5.1]
  def change
    drop_table :private_messages
  end
end
