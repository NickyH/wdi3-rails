# == Schema Information
#
# Table name: exercises
#
#  id         :integer          not null, primary key
#  activity   :string(255)
#  value      :float
#  units      :string(255)
#  completed  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Exercise < ActiveRecord::Base
  attr_accessible :activity, :value, :units, :completed
  belongs_to :users
end
