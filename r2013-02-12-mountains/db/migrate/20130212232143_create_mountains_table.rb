class CreateMountainsTable < ActiveRecord::Migration
  def change
    create_table :mountains do |t|
      t.string :name
      t.text :image
      t.text :height
      t.timestamps
    end
  end
end
