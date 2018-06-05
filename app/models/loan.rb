class Loan < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :user, :book, :borrow_date, presence: true

  def set_borrow_date
    self.borrow_date = Date.today
  end
end
