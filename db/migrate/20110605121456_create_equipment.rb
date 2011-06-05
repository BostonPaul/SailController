class CreateEquipment < ActiveRecord::Migration
  def self.up
    create_table :equipment do |t|
      t.integer :equipment_type_id
      t.string :prod_number

      t.timestamps
    end
  end

  def self.down
    drop_table :equipment
  end
end
