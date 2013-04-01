class HomeController < ApplicationController
  def index
    @words = Word.all.length
  end
end