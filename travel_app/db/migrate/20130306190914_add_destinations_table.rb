class AddDestinationsTable < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.string :city
      t.float :longitude
      t.float :latitude
      t.integer :itinerary_id

      t.timestamps
    end
  end
end
