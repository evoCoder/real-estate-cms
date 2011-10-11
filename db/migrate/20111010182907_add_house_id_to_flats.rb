class AddHouseIdToFlats < ActiveRecord::Migration
  def self.up
     add_column :flats, :house_id, :integer
  end
  
  def self.down
     remove_column :flats, :house_id
  end
end
