class Book < ApplicationRecord
  has_many :users, through: :loans
  has_many :loans
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true

  def self.available
    where(state: "available")
  end

  def self.unavailable
    where(state: "unavailable")
  end

  def available?
    state == "available"
  end

  def current_borrower
    loans.where(return_date: nil).first&.user
  end
end
