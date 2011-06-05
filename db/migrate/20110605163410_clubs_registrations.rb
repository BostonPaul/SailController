class ClubsRegistrations < ActiveRecord::Migration
    def self.up
        create_table :clubs_registrations, :id => false do |t|
          t.column :club_id, :integer
          t.column :registration_id, :integer
        end
        add_index :clubs_registrations, :registration_id
        add_index :clubs_registrations, :club_id
    end

    def self.down
        drop_table :clubs_registrations
    end
end
