User.delete_all
Product.delete_all
Tag.delete_all

u1 = User.create(:email => 'nickyhughes00+admin@gmail.com', :password => 'a', :password_confirmation => 'a', :is_admin => true, :balance => 3500)
u2 = User.create(:email => 'nickyhughes00@gmail.com', :password => 'a', :password_confirmation => 'a', :is_admin => false, :balance => 500)

p1 = Product.create(:name => 'Book', :description => 'something you read', :image => '', :cost => 45.50, :address => 'New York')
p2 = Product.create(:name => 'iPhone', :description => 'a kind of phone', :image => '', :cost => 400, :address => 'Chicago')
p3 = Product.create(:name => 'ipad', :description => 'a fancy device', :image => '', :cost => 600, :address => 'Washington DC')
p4 = Product.create(:name => 'Glasses', :description => 'for reading with', :image => '', :cost => 58, :address => 'Boston')
p5 = Product.create(:name => 'Kindle', :description => 'a new kind of book', :image => '', :cost => 300, :address => 'Philadelphia')

t1 = Tag.create(name: 'apple')
t2 = Tag.create(name: 'phone')
t3 = Tag.create(name: 'android')
t4 = Tag.create(name: 'blackberry')

p1.tags = [t1, t2]
p2.tags = [t3, t2]
p3.tags = [t4, t2]
p4.tags = [t1, t2]
p5.tags = [t3, t2]

