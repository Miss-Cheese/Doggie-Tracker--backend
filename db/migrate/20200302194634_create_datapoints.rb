class CreateDatapoints < ActiveRecord::Migration[6.0]
  def change
    create_table :datapoints do |t|
      t.integer :walk_id
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
