class Book < ApplicationRecord
  has_many :users, through: :loans
  has_many :loans
  validates :title, presence: true, uniqueness: true
  validates :author, presence: true

  scope :available, -> { where(state: "available")}
  scope :unavailable, -> { where(state: "unavailable")}
  scope :search, -> (search) { where("title LIKE ?", "%#{search}%")}

  def available?
    state == "available"
  end

  def current_borrower
    loans.where(return_date: nil).first&.user
  end
end
