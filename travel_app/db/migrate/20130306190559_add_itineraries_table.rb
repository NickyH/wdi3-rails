class AddItinerariesTable < ActiveRecord::Migration
  def change
    create_table :itineraries do |t|
      t.string :name
      t.date :start_date
      t.integer :user_id

      t.timestamps
    end
  end
end
