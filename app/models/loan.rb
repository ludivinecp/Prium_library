class Loan < ApplicationRecord
  belongs_to :borrower, foreign_key: "borrower_id", class_name: "User"
  belongs_to :book
  validates :borrower, :book, :borrow_date, presence: true
end
