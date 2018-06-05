class User < ApplicationRecord
  has_many :loans
  has_many :books, through: :loan
  validates :firstname, :lastname, presence: true
  validates :email, presence: true, uniqueness: true
end
