class AddDescriptionToPoll < ActiveRecord::Migration[5.0]
  def change
    add_column :polls, :description, :string
  end
end
