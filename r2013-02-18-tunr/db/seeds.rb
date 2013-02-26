Genre.delete_all
Song.delete_all
Album.delete_all
Artist.delete_all
User.delete_all
Playlist.delete_all

g1 = Genre.create(:name => 'Classical')
g2 = Genre.create(:name => 'Rock')
g3 = Genre.create(:name => 'Top 40')

s1 = Song.create(:name => 'Thriller', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRE0lB0Fc4lKV5H7FsQcNSVVDaLQVRR0ZQiil-h7-GG7dDaZRLdZA', :cost => 1.29)
s2 = Song.create(:name => 'Billie Jean', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcTQKye-7Y31ie3_RWEg2KL5VVDZWCUxf1G2ndbeVefWd1O8oHnv', :cost => 1.19)
s3 = Song.create(:name => 'Smells Like Teen Spirit', :filename => 'Smells Like Teen Spirit.mp3', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0djKT5tXb-5brF7IZ6JYZ32bK1LOFonrMfgk0Cnnb9PckVeaO', :cost => 1.39)

a1 = Album.create(:name => 'Thriller', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcS3dQxEJjjb7W3P4Wmgi85N4InZFfykySBwf1_dztMkWtlr73eEfQ')
a2 = Album.create(:name => 'Nevermind', :image => 'http://images.fanpop.com/images/image_uploads/Nirvana--Nevermind-the-90s-368076_1416_1398.jpg')
a3 = Album.create(:name => 'The White Album', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRs-6kOfeFQ30SHLJVHfP1Y82JtwhmRryy5G6rvdCuLqzjclcoh')
a4 = Album.create(:name => 'Legend', :image => 'http://0utsidetheframe.files.wordpress.com/2008/09/legend.jpg')

r1 = Artist.create(:name => 'Michael Jackson', image: 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSJNFR5yj1OvLFSe7KwEnR7zDqiDVvvCX9tHTkFeeGXMpuKzWHX')
r2 = Artist.create(:name => 'Nirvana', image: 'http://images1.fanpop.com/images/photos/1200000/Nirvana-kurt-cobain-1285569-1024-768.jpg')
r3 = Artist.create(:name => 'Beatles', image: 'https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQIGOv9G0_r9NAvS5Q257bpLggZN44a8a_ywIzRXbFD2H5BKx6i6Q')
r4 = Artist.create(:name => 'Bob Marley', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsS67TEkDgX3scA60f2sDi-BxzGtzdLRYxL36h5u_WyNYE0CxS')

u1 = User.create(:name => 'Bob', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSkI4yyxcxeDw-WN9dSLn_qffzOM4ZvqajkaQVsfnDqvWFTCgevfw', :password => 'pass', :password_confirmation => 'pass', :balance => 260.00)
u2 = User.create(:name => 'Sue', :image => 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcR-hsZbXfPMIy2mLgjn42SEz1ClJCCoscI-v4NZTSNYgV2A9plApA', :password => 'pass', :password_confirmation => 'pass', :balance => 135.00 )
u3 = User.create(:name => 'admin', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSsB7GMcMntbFShnVUsgvjKIFOMWBpII_N6bWpg_kcolM-X2_3w', :password => 'admin0011', :password_confirmation => 'admin0011')
u3.is_admin = true
u3.save
u4 = User.create(:name => 'Beth', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQv8Gm5Giv7X8twoK01XxJ-koCK6xg8PpsMSkZIMPJItFD_lkK7', :password => 'pass', :password_confirmation => 'pass', :balance => 85.00 )

m1 = Playlist.create(:name => 'Easy Listening')
m2 = Playlist.create(:name => 'Workout Music')
m3 = Playlist.create(:name => 'Old School')
m4 = Playlist.create(:name => 'Pop')

r1.songs << s1 << s2
r2.songs = [s3]
a1.songs = [s1, s2]
a2.songs << s3
g3.songs = [s1, s2, s3]
u1.playlists = [m1, m2]
u3.playlists = [m3]
m3.songs = [s1, s2, s3]
u1.albums = [a1, a2]