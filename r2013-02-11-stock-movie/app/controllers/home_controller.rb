class HomeController < ApplicationController
  def home
  end

  def about
  end

  def faq
  end

  def stock

  end

  def movie
  end

  def stockresult
      @name = params[:stock].upcase
      @result = YahooFinance::get_quotes(YahooFinance::StandardQuote, @name)[@name].lastTrade
  end

  def movieresult
      title = params[:movie]
      title = title.split.join('+')
      title = title.downcase
      result = HTTParty.get("http://www.omdbapi.com/?t=#{title}")
      hash = JSON(result.body)

      @title = hash['Title']
      @year = hash['Year']
      @rated = hash['Rated']
      @poster = hash['Poster']

  end

end