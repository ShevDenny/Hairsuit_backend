class Review < ApplicationRecord
  belongs_to :salon
  belongs_to :user
  
  has_one_attached :review_photo

  validates :comment, presence: {message: "must be present"}
  # validates :rating, inclusion: 0..5
  validates :comment, length: {maximum: 400}


  # def format_json 
  #   {
  #     rating: self.rating,
  #     comment: self.comment,
  #     user_id: self.user_id,
  #     salon_id: self.salon_id,
  #     review_photo: rails_blob_path(self.review_photo)
  #   }
  # end
  
end
