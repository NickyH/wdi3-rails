class UsersController < ApplicationController
  def index
    @users = User.order(:name)
    @meals = @auth.meals
  end
  def new
    @user = User.new
  end
  def show
    @user = User.find(params(:id))
  end
  def create
    User.create(params[:user])
    redirect_to(root_path)
  end
end
