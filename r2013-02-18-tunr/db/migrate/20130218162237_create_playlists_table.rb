class CreatePlaylistsTable < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :name
      t.integer :user_id
      t.timestamps
    end
  end
end
