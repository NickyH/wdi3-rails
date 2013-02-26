class BooksController < ApplicationController
 def index
  @books = Book.all
 end
 def create
 end
 def new
  @book = Book.new
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