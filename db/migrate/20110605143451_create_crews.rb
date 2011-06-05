class CreateCrews < ActiveRecord::Migration
  def self.up
    create_table :crews do |t|
      t.integer :boat_id
      t.integer :crew_type_id

      t.timestamps
    end
  end

  def self.down
    drop_table :crews
  end
end
