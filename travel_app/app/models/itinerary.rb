# == Schema Information
#
# Table name: itineraries
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  start_date :date
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Itinerary < ActiveRecord::Base
  attr_accessible :name, :start_date, :user_id
  has_many :destinations
  belongs_to :user

end