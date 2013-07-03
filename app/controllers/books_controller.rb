class BooksController < ApplicationController
  def index
    @books = Book.all
    respond_to do |format|
      format.html
      format.json { render json: @books }
    end
  end

  def new
  end

  def create
    @book = Book.new(params[:book])
    render json: { value: @book.save, book: @book }
  end
end
