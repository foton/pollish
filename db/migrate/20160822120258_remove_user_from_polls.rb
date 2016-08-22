class RemoveUserFromPolls < ActiveRecord::Migration[5.0]
  def change
    remove_column :polls, :user_id
  end
end
