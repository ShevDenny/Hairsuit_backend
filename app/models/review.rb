class Review < ApplicationRecord
  belongs_to :salon
  belongs_to :user

  validates :rating, :comment, presence: {message: "must be present"}
  validates :rating, inclusion: 0..5
  validates :comment, length: {maximum: 400}

  has_one_attached :cover_picture

end
