Subscription.delete_all
Administrator.delete_all
Subscriber.delete_all
User.delete_all

u1 = User.create(:username => 'bob', :email => 'bob@gmail.com', :password => 'a', :password_confirmation => 'a')
u2 = User.create(:username => 'sue', :email => 'sue@gmail.com', :password => 'a', :password_confirmation => 'a')
u3 = User.create(:username => 'billy', :email => 'blly@gmail.com', :password => 'a', :password_confirmation => 'a')
u4 = User.create(:username => 'henry', :email => 'henry@gmail.com', :password => 'a', :password_confirmation => 'a')

sn1 = Subscription.create(:plan => 'Free', :duration => '3 months', :cost => 0, :no_of_photos => 10, :no_of_texts => 10, :no_of_emails => 10, :a_list => true)
sn2 = Subscription.create(:plan => 'Basic', :duration => '3 months', :cost => 59, :no_of_photos => 50, :no_of_texts => 50, :no_of_emails => 50, :a_list => true)

sr1 = Subscriber.create(:tagline => 'hi i\'m Sue', :bio => 'i\'m looking for a date', :preferences => 'men', :bodytype => 'slim', :location => 'Manhattan', :status => 'single', :ethnicity => 'Asian', :gender => 'F', :age => '30', :occupation => 'entrepeneur', :interests => 'sport', :political => 'liberal', :religious => 'none', :education => 'College', :income => 150000)
sr2 = Subscriber.create(:tagline => 'hi i\'m Bob', :bio => 'i\'m looking for a date', :preferences => 'men', :bodytype => 'slim', :location => 'Manhattan', :status => 'single', :ethnicity => 'Asian', :gender => 'F', :age => '30', :occupation => 'entrepeneur', :interests => 'sport', :political => 'liberal', :religious => 'none', :education => 'College', :income => 150000)
sr3 = Subscriber.create(:tagline => 'hi i\'m Anne', :bio => 'i\'m looking for a date', :preferences => 'men', :bodytype => 'slim', :location => 'Manhattan', :status => 'single', :ethnicity => 'Asian', :gender => 'F', :age => '30', :occupation => 'entrepeneur', :interests => 'sport', :political => 'liberal', :religious => 'none', :education => 'College', :income => 150000)
sr4 = Subscriber.create(:tagline => 'hi i\'m Henry', :bio => 'i\'m looking for a date', :preferences => 'men', :bodytype => 'slim', :location => 'Manhattan', :status => 'single', :ethnicity => 'Asian', :gender => 'F', :age => '30', :occupation => 'entrepeneur', :interests => 'sport', :political => 'liberal', :religious => 'none', :education => 'College', :income => 150000)

a1 = Administrator.create(:role => 'db', :ssn => '111-222-3333', :tel => '345-564-2464')
a2 = Administrator.create(:role => 'service', :ssn => '111-222-3333', :tel => '345-564-2464')
a3 = Administrator.create(:role => 'graphics', :ssn => '111-222-3333', :tel => '345-564-2464')

sr1.subscription = sn1
sr2.subscription = sn2
sr3.subscription = sn1
sr4.subscription = sn2

sr1.user = u1
sr2.user = u2
sr3.user = u3
sr4.user = u4