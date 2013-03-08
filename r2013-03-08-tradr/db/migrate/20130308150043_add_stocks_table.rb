class AddStocksTable < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :name
      t.decimal :price
      t.integer :quantity
      t.integer :user_id
      t.timestamps
    end
  end
end
