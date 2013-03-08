User.delete_all
Task.delete_all
Priority.delete_all

u1 = User.create(:name => 'Henry', :email => 'henry@gmail.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'Bobby', :email => 'bobby@gmail.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'Susy', :email => 'susy@gmail.com', :password => 'a', :password_confirmation => 'a')

p1 = Priority.create(:name => 'medium', :color => '#fff555', :value => 1)
p2 = Priority.create(:name => 'low', :color => '#6664422', :value => 2)
p3 = Priority.create(:name => 'high', :color => '#cc55aa', :value => 3)

t1 = Task.create(:title => 'Homework', :description => 'Finish all wdi homework', :due_date => '2013/02/27', :address => '10 East 21st Street, New York, New York')
t2 = Task.create(:title => 'Buy groceries', :description => 'Buy groceries after work', :due_date => '2013/03/27', :address => '106 Ridge Street, New York, New York')
t3 = Task.create(:title => 'Get milk', :description => 'Buy milk from the shop', :due_date => '2013/03/05', :address => '11 Gamma Road, Lane Cove, NSW, Australia, 2066')
t4 = Task.create(:title => 'Fitness', :description => 'Go for a run at the park', :due_date => '2013/03/01', :address => '1 Reuss Street, Glebe, NSW, Australia, 2037')

t1.priority = p1
t1.save
t2. priority = p2
t2.save
t3. priority = p3
t3.save

u1.priorities << p1 << p2 << p3
u1.tasks << t1 << t2 << t3
