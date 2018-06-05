class User < ApplicationRecord
  has_many :loans
  has_many :books, through: :loans
  validates :firstname, :lastname, presence: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

  def self.active
    where(id: Loan.all.map(&:user).map(&:id).uniq)
  end
end
