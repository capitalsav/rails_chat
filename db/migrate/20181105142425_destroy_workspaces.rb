class DestroyWorkspaces < ActiveRecord::Migration[5.1]
  def change
    execute "DROP TABLE #{:workspaces} CASCADE"
    drop_table :user_workspaces
  end
end
