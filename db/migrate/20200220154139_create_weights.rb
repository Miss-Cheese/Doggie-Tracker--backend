class CreateWeights < ActiveRecord::Migration[6.0]
  def change
    create_table :weights do |t|
      t.integer :dog_id
      t.integer :amount
      t.datetime :date

      t.timestamps
    end
  end
end
