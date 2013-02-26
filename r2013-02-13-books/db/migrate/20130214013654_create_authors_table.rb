class CreateAuthorsTable < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :name
      t.date :dob
      t.text :nationality
      t.text :publisher
      t.text :image
      t.timestamps
      end
  end
end
