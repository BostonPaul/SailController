class CreateBoatTypes < ActiveRecord::Migration
  def self.up
    create_table :boat_types do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :boat_types
  end
end
