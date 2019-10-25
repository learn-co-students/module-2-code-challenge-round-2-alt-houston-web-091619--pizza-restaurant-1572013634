class CreatePizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :pizzas do |t|
      t.string :name
      t.string :ingredients
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
