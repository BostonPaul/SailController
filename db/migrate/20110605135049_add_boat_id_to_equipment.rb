class AddBoatIdToEquipment < ActiveRecord::Migration
  def self.up
      add_column :equipment, :boat_id, :integer
  end

  def self.down
      remove_column :equipment, :boat_id
  end
end
