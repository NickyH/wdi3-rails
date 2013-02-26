class CalcController < ApplicationController
  def calc
  end
  def result
    case params[:op]
    when '+' then @result = (params[:x]).to_i + (params[:y]).to_f
    when '-' then @result = (params[:x]).to_i - (params[:y]).to_f
    end
  end
end