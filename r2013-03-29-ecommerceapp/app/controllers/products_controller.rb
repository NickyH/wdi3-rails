class ProductsController < ApplicationController
  # before_filter :check_if_admin
def new
  @product = Product.new
end
def index
  @products = Product.order(:name)
end
def show
end
def create
  @product = Product.create(params[:product])
end
def filter
  tag = Tag.find(params[:tag_id])
  @products = tag.products
end
def search
  query = params[:query]
  @products = Product.where("name @@ :q or description @@ :q or image @@ :q or address @@ :q", :q => query)
  render :filter
end
end