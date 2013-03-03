class CreateMealsTable < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.string :name
      t.text :description
      t.date :date
      t.time :time
      t.integer :user_id

      t.timestamps
    end
  end
end
