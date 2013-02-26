class AddArtistIdToArtsTable < ActiveRecord::Migration
  def change
    add_column :arts, :artist_id, :integer
  end
end
