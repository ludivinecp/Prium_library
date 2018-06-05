class Loan < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :user, :book, presence: true
  before_create :set_borrow_date

  def set_borrow_date
    self.borrow_date = Date.today
  end

  def borrow!
    book.update_attributes(state: "unavailable")
  end

  def return!
    book.update_attributes(state: "available")
    update_attributes(return_date: Date.today)
  end

  def active?
    self.return_date.nil?
  end
end
