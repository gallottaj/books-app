class Api::BooksController < ApplicationController
  def index
    @books = Book.all
    render "index.json.jbuilder"
  end

  def create
    @book = Book.new(
      title: params[:title],
      author: params[:author],
      genre: params[:genre]
      )
    @book.save
  #   if @book.save
  #   p "book added"
  #   else
  #   p "error"
  #   end
  # end
  end
end
