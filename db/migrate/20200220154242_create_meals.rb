class CreateMeals < ActiveRecord::Migration[6.0]
  def change
    create_table :meals do |t|
      t.integer :dog_id
      t.string :food
      t.string :meal_type
      t.date :date
      t.time :time

      t.timestamps
    end
  end
end
