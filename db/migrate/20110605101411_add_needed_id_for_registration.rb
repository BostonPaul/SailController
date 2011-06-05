class AddNeededIdForRegistration < ActiveRecord::Migration
  def self.up
      add_column :registrations, :boat_id, :integer
      add_column :registrations, :user_id, :integer
      add_column :registrations, :regattum_id, :integer
  end

  def self.down
      remove_column :registrations, :boat_id
        remove_column :registrations, :user_id
        remove_column :registrations, :regattum_id
  end
end
