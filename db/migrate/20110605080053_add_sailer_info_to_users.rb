class AddSailerInfoToUsers < ActiveRecord::Migration
  def self.up
      add_column :users, :address, :string
      add_column :users, :zipcode, :integer
      add_column :users, :city, :string
  end

  def self.down
      remove_column :users, :addreess
      remove_column :users, :zipcode
      remove_column :users, :city
  end
end
