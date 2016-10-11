class AddCodeToPolls < ActiveRecord::Migration[5.0]
  def change
    add_column :polls, :code, :string, default: "", null: false
  end
end
