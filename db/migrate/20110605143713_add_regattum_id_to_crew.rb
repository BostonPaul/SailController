class AddRegattumIdToCrew < ActiveRecord::Migration
  def self.up
      add_column :crews, :regattum_id, :integer
  end

  def self.down
      remove_column :crews, :regattum_id
  end
end
