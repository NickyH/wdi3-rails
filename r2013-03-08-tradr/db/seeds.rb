User.delete_all
Stock.delete_all


u1 = User.create(:name => 'Henry', :email => 'henry@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 150000)
u2 = User.create(:name => 'Bobby', :email => 'bobby@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 200000)
u3 = User.create(:name => 'Susy', :email => 'susy@gmail.com', :password => 'a', :password_confirmation => 'a', :balance => 80000)

s1 = Stock.create(:name => 'AAPL', :price => 426.00, :quantity => 25)
s2 = Stock.create(:name => 'FB', :price => 426.00, :quantity => 25)
s3 = Stock.create(:name => 'GOOG', :price => 426.00, :quantity => 25)
s4 = Stock.create(:name => 'AA', :price => 426.00, :quantity => 25)
s5 = Stock.create(:name => 'INT', :price => 426.00, :quantity => 25)
s6 = Stock.create(:name => 'LNKD', :price => 426.00, :quantity => 25)

u1.stocks << s1 << s2
u2.stocks << s3 << s4
u3.stocks << s5 << s6