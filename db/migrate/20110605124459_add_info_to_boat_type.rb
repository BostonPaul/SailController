class AddInfoToBoatType < ActiveRecord::Migration
  def self.up
      add_column :boat_types, :name, :string
  end

  def self.down
      remove_column :boat_types, :name
  end
end
