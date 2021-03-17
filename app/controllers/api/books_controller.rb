class Api::BooksController < ApplicationController
  def index
    response = HTTP.get("https://api.nytimes.com/svc/books/v3/lists/current/hardcover-fiction.json?api-key=#{Rails.application.credentials.books_api[:api_key]}")
    render json: response.parse
  end
end
