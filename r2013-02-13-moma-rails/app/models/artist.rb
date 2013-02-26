# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  nationality :text
#  dob         :date
#  period      :text
#  image       :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Artist < ActiveRecord::Base
  attr_accessible :name, :nationality, :dob, :period, :image
  has_many :arts
end
