Album.delete_all
Photo.delete_all

a1 = Album.create(:name => 'Cities')
a2 = Album.create(:name => 'Architecture')
a3 = Album.create(:name => 'Family')
a4 = Album.create(:name => 'Travel')