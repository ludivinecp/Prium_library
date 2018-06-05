class HomeController < ApplicationController
  def index
    @books_count = Book.all.count
    @available_books_count = Book.available.count
    @unavailable_books_count = Book.unavailable.count

    @users_count = User.all.count
    @active_users_count = User.active.count
  end
end
