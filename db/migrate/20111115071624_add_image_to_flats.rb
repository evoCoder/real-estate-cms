class AddImageToFlats < ActiveRecord::Migration
  def change
    add_column :flats, :image, :string
  end
end
