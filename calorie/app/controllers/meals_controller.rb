class MealsController < ApplicationController
  def index
  end
  def create
    id = params[:id]
    description = params[:description]
    name = params[:name]
    date = params[:date]
    time = params[:time]

    if id.present?
      meal = Meal.find(id)
      meal.name = name
      meal.description = description
      meal.date = date
      meal.time = time
      meal.save
    else
      meal = Meal.create(:description => description, :name => name, :date => date, :time => time)
      @auth.meals << meal
    end
    render :json => meal
  end

end