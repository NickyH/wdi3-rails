User.delete_all
Exercise.delete_all


u1 = User.create(:name => 'Henry', :email => 'henry@gmail.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'Bobby', :email => 'bobby@gmail.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'Susy', :email => 'susy@gmail.com', :password => 'a', :password_confirmation => 'a')

e1 = Exercise.create(:activity => 'running', :value => '5.5', :units => 'kilometres', :completed => '2013-03-12')
e2 = Exercise.create(:activity => 'jogging', :value => '4.5', :units => 'kilometres', :completed => '2013-03-13')
e3 = Exercise.create(:activity => 'netball', :value => '2', :units => 'games', :completed => '2013-03-14')
e4 = Exercise.create(:activity => 'situps', :value => '10', :units => 'sets', :completed => '2013-03-15')
e5 = Exercise.create(:activity => 'crunches', :value => '20', :units => 'sets', :completed => '2013-03-16')
e6 = Exercise.create(:activity => 'swimming', :value => '5.0', :units => 'kilometres', :completed => '2013-03-17')
e7 = Exercise.create(:activity => 'running', :value => '4.7', :units => 'kilometres', :completed => '2013-03-18')
e8 = Exercise.create(:activity => 'running', :value => '6.8', :units => 'kilometres', :completed => '2013-03-19')


u1.exercises << e1 << e2 << e3 << e4 << e5 << e6 << e7 << e8