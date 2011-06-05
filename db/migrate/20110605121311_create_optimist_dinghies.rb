class CreateOptimistDinghies < ActiveRecord::Migration
  def self.up
    create_table :optimist_dinghies do |t|
      t.integer :user_id
      t.string :owner_license
      t.string :police_number

      t.timestamps
    end
  end

  def self.down
    drop_table :optimist_dinghies
  end
end
