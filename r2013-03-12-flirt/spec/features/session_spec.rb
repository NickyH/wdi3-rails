require 'spec_helper'

describe 'Session' do
  describe 'GET /' do
    it 'displays login link' do
      visit root_path
      page.should have_link('Login')
    end
  end

  describe 'GET /login' do
    it 'displays the login form', :js => true do
      visit root_path
      click_link('Login')
      page.should have_link('Cancel')
      page.should have_button('Start Flirting')
    end
  end

  describe 'POST /login' do
    let(:user) {User.create(email: 'bob@gmail.com', username: 'Bob', password: 'a', password_confirmation: 'a')}

    it 'logs the user into the system if credentials are correct', :js => true do
      visit root_path
      click_link('Login')
      fill_in('Email', :with => user.email)
      fill_in('Password', :with => 'a')
      click_button('Start Flirting')
      page.should_not have_button('Start Flirting')
      expect(page.has_link?('Bob')).to be true
      page.should_not have_link('Register')
      page.should_not have_link('Login')
      visit root_path
      expect(page.has_link?('Bob')).to be true
      page.should_not have_link('Register')
      page.should_not have_link('Login')
    end
    it 'logs the user off the system', :js => true do
      add_subscriptions
      subscriber = Subscriber.create(tagline: 'please change tagline', bio: 'please change bio', gender: 'please change gender', age: 99)
      subscriber.user = user
      visit root_path
      click_link('Login')
      fill_in('Email', :with => user.email)
      fill_in('Password', :with => 'a')
      click_button('Start Flirting')
      click_link('Bob')
      expect(page.has_link?('Bob')).to be false
      page.should have_link('Register')
      page.should have_link('Login')
      page.should_not have_button('Free')
      visit root_path
      page.should have_link('Register')
      page.should have_link('Login')
      page.should_not have_button('Basic')
    end
    it 'does not log the user into the system if credentials are incorrect', :js => true do
      visit root_path
      click_link('Login')
      fill_in('Email', :with => user.email)
      fill_in('Password', :with => 'b')
      click_button('Start Flirting')
      page.should have_button('Start Flirting')
    end
  end

  describe 'JS cancel_login_form()' do
    it 'removes the login form', :js => true do
      visit root_path
      click_link('Login')
      click_link('Cancel')
      page.should_not have_button('Start Flirting')
    end
  end
end

def add_subscriptions
  ['Free', 'Basic'].each do |name|
    Subscription.create(plan: name)
  end
end