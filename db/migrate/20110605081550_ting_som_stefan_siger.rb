class TingSomStefanSiger < ActiveRecord::Migration
  def self.up
      add_column :users, :after_name, :string
      add_column :users, :number, :string
  end

  def self.down
      remove_column :users, :after_name, :string
      remove_column :users, :number, :string
  end
end
