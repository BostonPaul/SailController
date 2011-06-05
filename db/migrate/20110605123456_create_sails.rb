class CreateSails < ActiveRecord::Migration
  def self.up
    create_table :sails do |t|
      t.string :number
      t.string :prod_number

      t.timestamps
    end
  end

  def self.down
    drop_table :sails
  end
end
