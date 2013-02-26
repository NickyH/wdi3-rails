class AddCostColumnToSongTable < ActiveRecord::Migration
  def change
    add_column :songs, :cost, :decimal, :default => 1.99
  end
end
