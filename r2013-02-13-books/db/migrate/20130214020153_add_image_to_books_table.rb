class AddImageToBooksTable < ActiveRecord::Migration
  def change
    add_column :books, :image, :text
  end
end
