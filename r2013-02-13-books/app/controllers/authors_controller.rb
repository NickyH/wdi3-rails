class AuthorsController < ApplicationController
 def index
  @authors = Author.all
 end
 def create
 end
 def new
  @author = Author.new
 end
 def edit
 end
 def show
 end
 def update
 end
 def destroy
 end
end