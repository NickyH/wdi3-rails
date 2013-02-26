class CreateMomaTable < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :nationality
      t.date :dob
      t.text :period
      t.text :image
      t.timestamps
      end
  end
end
