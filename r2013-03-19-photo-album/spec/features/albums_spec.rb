require 'spec_helper'

describe 'Albums' do

  let(:album) {Album.create(name: 'Cities')}

  describe 'GET /' do
    it 'displays New Album link' do
      visit root_path
      page.should have_link('New Album')
    end

    it 'displays a list of all albums' do
      visit root_path
      page.should have_text('Cities')
  end
end

  describe 'GET /albums/new' do
    it 'displays the new album form', :js => true do
      visit root_path
      click_link('New Album')
      page.should have_link('Cancel')
      page.should have_button('Create Album')
    end
  end

  describe 'POST /' do
    it 'creates an album' do
      visit root_path
      click_link('New Album')
      page.should have_button('Create Album')
      page.should have_link('Cancel')
      fill_in('Name', :with => 'Dogs')
      click_button('Create Album')
      page.should_not have_button('Create Album')
      expect(Album.first.name).to eq 'Dogs'
  end
end

  describe 'GET /albums/3' do
      it 'displays the album show page', :js => true do
        visit root_path
        click_link('New Album')
        fill_in('Name', :with => 'Dogs')
        click_button('Create Album')
        click_link('Dogs')
        current_path.should eq '/albums/1'
      end

      it 'displays the New Photo link', :js => true do
        album = FactoryGirl.create(:album)
        visit album_path(albmum)
        current_path_should eq '/albums/1'
        page.should have_link('New Photo')
      end
    end




# describe 'JS clear form'


end

