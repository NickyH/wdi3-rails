User.delete_all
Itinerary.delete_all
Destination.delete_all

u1 = User.create(:name => 'Henry', :email => 'henry@gmail.com', :password => 'a', :password_confirmation => 'a', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcQsLv4sZMLZHMPYYaTERobnI9Kh5R9p67Jr-u_f7yT29GD-AnPm')
u2 = User.create(:name => 'Bobby', :email => 'bobby@gmail.com', :password => 'a', :password_confirmation => 'a', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSLmMi9SieFepMU8w45_9NM7-Ud0Z2Cj5BDwPukT6EAUa9eBRE0')
u3 = User.create(:name => 'Susy', :email => 'susy@gmail.com', :password => 'a', :password_confirmation => 'a', :image => 'https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcRPLaX0xolbsbTkmhc1mGFvDo2l5UXFgt3xJ3KQH592CHuFcrGa')

i1 = Itinerary.create(:name => 'Our Family Trip', :start_date => '2013-03-20')
i2 = Itinerary.create(:name => 'Europe trip', :start_date => '2013-03-13')
i3 = Itinerary.create(:name => 'USA Road trip', :start_date => '2013-02-13')

d1 = Destination.create(:city => 'New York')
d2 = Destination.create(:city => 'San Francisco')
d3 = Destination.create(:city => 'Seattle')
d4 = Destination.create(:city => 'Los Angeles')
d5 = Destination.create(:city => 'Dallas')
d6 = Destination.create(:city => 'Chicago')
d7 = Destination.create(:city => 'Paris')
d8 = Destination.create(:city => 'Barcelona')
d9 = Destination.create(:city => 'Rome')
d10 = Destination.create(:city => 'Vienna')


u1.itineraries << i1
u2.itineraries << i2
u3.itineraries << i3

i3.destinations << d1 << d2 << d3 << d4 << d5 << d6
i2.destinations << d7 << d8 << d9 << d10