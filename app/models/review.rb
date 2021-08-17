class Review < ApplicationRecord
  belongs_to :salon
  belongs_to :user

  validates :rating, :comment, presence: {message: "must be present"}
  validates :rating, inclusion: 1..5
  validates :comment, length: {maximum: 400}

end
