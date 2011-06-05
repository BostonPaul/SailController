class AddUserIdToBoat < ActiveRecord::Migration
  def self.up
      add_column :boats, :user_id, :integer
  end

  def self.down
      remove_column :boats, :user_id
  end
end
