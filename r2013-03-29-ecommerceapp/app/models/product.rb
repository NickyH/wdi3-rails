# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  image       :text
#  cost        :decimal(, )
#  address     :text
#  latitude    :float            default(0.0)
#  longitude   :float            default(0.0)
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ActiveRecord::Base
  attr_accessible :name, :description, :image, :cost, :address, :user_id
  belongs_to :user
  has_and_belongs_to_many :tags
  before_save :geocode
private
def geocode
  result = Geocoder.search(self.address).first

  if result.present?
    self.latitude = result.latitude
    self.longitude = result.longitude
  end
end
end
