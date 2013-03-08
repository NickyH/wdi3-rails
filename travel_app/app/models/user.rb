# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  email           :string(255)
#  image           :string(255)
#  password_digest :string(255)
#  location        :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :name, :email, :image, :password, :password_confirmation, :location
  has_many :itineraries
  has_secure_password

      before_save :geocoder
  private
  def geocoder
    result = Geocoder.search(self.location).first
    if result.present?
      self.latitude = result.latitude
      self.longitude = result.longitude
    end
  end
end
