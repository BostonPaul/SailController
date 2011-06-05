class AddRegettaIdToRaces < ActiveRecord::Migration
  def self.up
      add_column :races, :regattum_id, :integer
  end

  def self.down
      remove_column :races, :regattum_id
  end
end
