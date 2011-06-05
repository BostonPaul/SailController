class CreateRegatta < ActiveRecord::Migration
  def self.up
    create_table :regatta do |t|
      t.string :name
      t.datetime :start_date
      t.datetime :end_time

      t.timestamps
    end
  end

  def self.down
    drop_table :regatta
  end
end
