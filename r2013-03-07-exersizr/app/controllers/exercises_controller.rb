class ExercisesController < ApplicationController
  before_filter :only_authorized
  def index
    @exercises = @auth.exercises.order(:activity).order(:completed)
    @selection = @auth.exercises.map(&:activity).uniq.sort
  end
  def new
    @exercise = Exercise.new
  end
  def create
    Exercise.create(params[:id])
    @auth.exercises << Exercise.create(params[:exercise])
    @exercises = @auth.exercises.order(:activity).order(:completed)
    @selection = @auth.exercises.map(&:activity).uniq.sort
    # respond_to do |format|
    #   format.js
    # end
  end
  def chart
    # binding.pry
    render :json => @auth.exercises.where(:activity => params[:activity])
  end
  private
  def only_authorized
    redirect_to(root_path) if @auth.nil?
  end
end