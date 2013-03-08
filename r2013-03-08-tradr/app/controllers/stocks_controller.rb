class StocksController < ApplicationController
  def index
    @stocks = Stock.order(:name)
    @userstocks = @auth.stocks.order(:name)
  end
  def new
    @stock = Stock.new
  end
  def show
    @stock = Stock.find(params[:id])
  end
  def create
    Stock.create(params[:stock])
    @stocks = Stock.order(:name)

    respond_to do |format|
      format.html { redirect_to(root_path) }
      format.js
    end
  end
  def get_quote
    symbol = params[:selected]
    stock = @auth.stocks.where(:name => symbol).first
    stockarray = []
    quote = YahooFinance::get_quotes(YahooFinance::StandardQuote, symbol)[symbol].lastTrade
    render :json => [quote, symbol]
  end
end

