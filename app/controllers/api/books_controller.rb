class Api::BooksController < ApplicationController
  def index
    @book = Book.all
    render "index.json.jbuilder"
  end
end
