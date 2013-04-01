class AddProductsTable < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.text :image
      t.decimal :cost
      t.text :address
      t.float :latitude, :default => 0
      t.float :longitude, :default => 0
      t.integer :user_id
      t.timestamps
  end
end
end
