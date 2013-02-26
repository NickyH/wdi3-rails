# == Schema Information
#
# Table name: books
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  date       :date
#  genre      :text
#  author_id  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  image      :text
#

class Book < ActiveRecord::Base
  attr_accessible :title, :date, :genre, :author_id, :image
end
