class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end
  end
end
