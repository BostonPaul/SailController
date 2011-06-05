class CreateCrewTypes < ActiveRecord::Migration
  def self.up
    create_table :crew_types do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :crew_types
  end
end
