class AddImageToAuthorsTable < ActiveRecord::Migration
  def change
    add_column :authors, :image, :text
  end
end
