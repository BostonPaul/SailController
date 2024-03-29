class CreateEquipmentTypes < ActiveRecord::Migration
  def self.up
    create_table :equipment_types do |t|
      t.string :ident
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :equipment_types
  end
end
