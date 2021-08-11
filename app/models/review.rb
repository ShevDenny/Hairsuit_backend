class Review < ApplicationRecord
  belongs_to :salon
  belongs_to :user

  validates :rating, presence: {message: "Rating must be present"}
  validates :rating, inclusion: 1..5
  validates :comment, presence: {message: "Comment must be present"}
  validates :comment, length: {maximum: 150}

end
