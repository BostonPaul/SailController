class ClubsRegatta < ActiveRecord::Migration
  def self.up
      create_table :clubs_regatta, :id => false do |t|
        t.column :club_id, :integer
        t.column :regattum_id, :integer
      end
      add_index :clubs_regatta, :regattum_id
      add_index :clubs_regatta, :club_id
  end

  def self.down
      drop_table :clubs_regatta
  end
end
