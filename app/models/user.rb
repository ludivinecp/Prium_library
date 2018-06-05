class User < ApplicationRecord
  has_many :loans
  has_many :books, through: :loans
  validates :firstname, :lastname, presence: true
  validates :email, presence: true, uniqueness: true
  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/
  mount_uploader :picture, PictureUploader

  scope :search, -> (search) { where("email LIKE ?", "%#{search}%")}
  scope :active, -> { where(id: Loan.all.map(&:user).map(&:id).uniq)}

  def active_loans?
    loans.where(return_date: nil).present?
  end
end
