class Loan < ApplicationRecord
  belongs_to :user
  belongs_to :book
  validates :user, :book, :borrow_date, presence: true
end
