class CreateClubs < ActiveRecord::Migration
  def self.up
    create_table :clubs do |t|
      t.string :name
      t.text :address
      t.text :comment

      t.timestamps
    end
  end

  def self.down
    drop_table :clubs
  end
end
