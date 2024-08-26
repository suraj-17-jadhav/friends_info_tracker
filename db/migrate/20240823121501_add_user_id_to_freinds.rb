class AddUserIdToFreinds < ActiveRecord::Migration[7.1]
  def change
    add_column :friends, :user_id, :integer
    add_index :friends, :user_id
  end
end
