class AddBoatTypeIdToBoat < ActiveRecord::Migration
  def self.up
      add_column :boats, :boat_type_id, :integer
  end

  def self.down
      remove_column :boats, :boat_type_id
  end
end
