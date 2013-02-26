# == Schema Information
#
# Table name: arts
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  title      :text
#  year       :integer
#  medium     :text
#  style      :text
#  image      :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  artist_id  :integer
#

class Art < ActiveRecord::Base
  attr_accessible :name, :title, :year, :medium, :style, :image, :artist_id
  belongs_to :artist
end
