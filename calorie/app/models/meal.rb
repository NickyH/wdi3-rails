# == Schema Information
#
# Table name: meals
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  date        :date
#  time        :time
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Meal < ActiveRecord::Base
  attr_accessible :name, :description, :date, :time, :user_id
  belongs_to :user, :inverse_of => :meals
  has_many :foods, :inverse_of => :meal
end
