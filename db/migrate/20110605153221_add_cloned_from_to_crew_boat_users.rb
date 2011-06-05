class AddClonedFromToCrewBoatUsers < ActiveRecord::Migration
  def self.up
      add_column :boats, :cloned_from, :integer
      add_column :crews, :cloned_from, :integer
      add_column :users, :cloned_from, :integer
  end

  def self.down
      remove_column :boats, :cloned_from
      remove_column :crews, :cloned_from
      remove_column :users, :cloned_from
  end
end
