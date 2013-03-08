# == Schema Information
#
# Table name: destinations
#
#  id           :integer          not null, primary key
#  city         :string(255)
#  longitude    :float
#  latitude     :float
#  itinerary_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Destination < ActiveRecord::Base
  attr_accessible :city
  belongs_to :itineraries

      before_save :geocoder
  private
  def geocoder
    result = Geocoder.search(self.city).first
    if result.present?
      self.latitude = result.latitude
      self.longitude = result.longitude
    end
  end
end