class Book < ApplicationRecord
  has_many :borrowers, foreign_key: "borrower_id", class_name: "User", through: :loans
  has_many :loans
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true
end
