class CreateFlats < ActiveRecord::Migration
  def change
    create_table :flats do |t|
      t.string :stotal
      t.string :slive
      t.string :wc
      t.string :floor
      t.text :comment
      t.string :cost

      t.timestamps
    end
  end
end
