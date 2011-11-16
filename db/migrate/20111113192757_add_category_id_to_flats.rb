class AddCategoryIdToFlats < ActiveRecord::Migration
  def change
    add_column :flats, :category_id, :string
  end
end
