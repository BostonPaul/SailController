class AddUserIdToCrew < ActiveRecord::Migration
  def self.up
      add_column :crews, :user_id, :integer
  end

  def self.down
      remove_column :crews, :user_id
  end
end
