class CreateAlbumsTable < ActiveRecord::Migration
  def change
    create_table :albums do |t|
    t.string :name
    t.string :image
    t.timestamps
  end
end
end
