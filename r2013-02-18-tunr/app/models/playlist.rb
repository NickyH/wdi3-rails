# == Schema Information
#
# Table name: playlists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Playlist < ActiveRecord::Base
  attr_accessible :name, :user_id, :song_ids
  has_and_belongs_to_many :songs
  belongs_to :user
end
