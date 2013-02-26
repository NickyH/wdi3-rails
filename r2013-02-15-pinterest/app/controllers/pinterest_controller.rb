require 'open-uri'

class PinterestController < ApplicationController
  def show
    if params[:query].present?
      keyword = params[:query].gsub(' ', '+')
      url = "http://pinterest.com/search/pins/?q=#{keyword}"

    else

      url = 'http://pinterest.com'
    end

      doc = Nokogiri::HTML(open('http://pinterest.com'))
      images = doc.css('img')
      @urls = images.map {|i| i.get_attribute('src')}.select {|u| u.exclude?('avatar')}

  end
end
