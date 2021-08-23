class Review < ApplicationRecord
  belongs_to :salon
  belongs_to :user
  
  has_one_attached :review_photo

  validates :rating, :comment, presence: {message: "must be present"}
  validates :rating, inclusion: 0..5
  validates :comment, length: {maximum: 400}


end
