class CreateDeclarationsTable < ActiveRecord::Migration
  def change
    create_table :declarations do |t|
      t.string :url
      t.timestamps
    end
  end
end


