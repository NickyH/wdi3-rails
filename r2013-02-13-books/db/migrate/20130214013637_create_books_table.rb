class CreateBooksTable < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.date :date
      t.text :genre
      t.integer :author_id
      t.text :image
      t.timestamps
      end
  end
end

