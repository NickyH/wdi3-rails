class CreateArtTable < ActiveRecord::Migration
  def change
    create_table :arts do |t|
      t.string :name
      t.text :title
      t.integer :year
      t.text :medium
      t.text :style
      t.text :image
      t.timestamps
    end
  end
end
