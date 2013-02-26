# == Schema Information
#
# Table name: mountains
#
#  id     :integer          not null, primary key
#  name   :string(255)
#  image  :text
#  height :string(255)
#

class Mountain < ActiveRecord::Base
  attr_accessible :name, :image, :text, :height
end
