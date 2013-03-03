User.delete_all
Meal.delete_all
Food.delete_all

u1 = User.create(:name => 'Henry', :email => 'henry@gmail.com', :target => 1500, :password => 'a', :password_confirmation => 'a')
u2 = User.create(:name => 'Bobyy', :email => 'bobby@gmail.com', :target => 2000, :password => 'a', :password_confirmation => 'a')
u3 = User.create(:name => 'Sue', :email => 'sue@gmail.com', :target => 2500, :password => 'a', :password_confirmation => 'a')

m1 = Meal.create(:name => 'Breakfast', :description => 'Breakfast after gym session', :date => '2013/03/05')
m2 = Meal.create(:name => 'Lunch', :description => 'Quick lunch', :date => '2013/03/05')
m3 = Meal.create(:name => 'Afternoon Snack', :description => 'Light aftenoon snack, apple and cookie', :date => '2013/03/05')
m4 = Meal.create(:name => 'Dinner', :description => 'Early dinner, pasta', :date => '2013/03/05')


f1 = Food.create(:name => 'Apple', :calories => '65')
f2 = Food.create(:name => 'Slice of brown bread', :calories => '80')
f3 = Food.create(:name => 'Slice of cheddar cheese', :calories => '90')
f4 = Food.create(:name => 'Slice of tomato', :calories => '3')
f5 = Food.create(:name => 'Margarine', :calories => '50')
f6 = Food.create(:name => 'Banana', :calories => '90')
f7 = Food.create(:name => 'Apple', :calories => '40')
f8 = Food.create(:name => 'Hamburger', :calories => '170')


# u1.meal = m1
# u1.save
# u2.meal = m2
# u2.save
# u3.meal = m3
# u3.save

# m2.foods << f1 << f2 << f3
# u1.tasks << m1 << m2 << m3