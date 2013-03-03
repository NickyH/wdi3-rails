class CreateFoodsMealsTable < ActiveRecord::Migration
  def change
    create_table :foods_meals, :id => false do |t|
      t.integer :meal_id
      t.integer :food_id
    end
  end
end
