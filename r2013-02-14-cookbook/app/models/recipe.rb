class Recipe < ActiveRecord::Base
  attr_accessible :name, :course, :cooktime, :servingsize, :instructions, :image
  belongs_to :book
  has_and_belongs_to_many :ingredients
end



