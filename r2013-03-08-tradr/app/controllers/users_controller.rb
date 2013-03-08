class UsersController < ApplicationController
  def index
    @users = User.order(:email)
  end
  def new
    @user = User.new
  end
  def show
    @user = User.find(params[:id])
  end
  def create
    User.create(params[:user])
    @users = User.order(:email)

    respond_to do |format|
      format.html { redirect_to(root_path) }
      format.js
    end
  end
end