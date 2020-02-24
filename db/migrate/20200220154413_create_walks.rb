class CreateWalks < ActiveRecord::Migration[6.0]
  def change
    create_table :walks do |t|
      t.integer :dog_id
      t.datetime :start_time
      t.datetime :finish_time
      t.integer :pee
      t.integer :poop

      t.timestamps
    end
  end
end
