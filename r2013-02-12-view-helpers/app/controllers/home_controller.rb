class HomeController < ApplicationController
  def home
  end
  def numbers
    @amount = 234
    @large_number = 43678674577900053
    @phone = 2837593847
  end
  def text
    @numbers = (1..20).to_a
    @person_count1 = 1
    @person_count2 = 2
    @story = 'Ina place a very long time ago a long way a way.....'
  end
  def assets
  end
  def url
  end

end