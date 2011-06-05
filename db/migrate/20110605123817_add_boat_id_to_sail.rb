class AddBoatIdToSail < ActiveRecord::Migration
  def self.up
      add_column :sails, :boat_id, :integer
  end

  def self.down
      remove_column :sails, :boat_id
  end
end
