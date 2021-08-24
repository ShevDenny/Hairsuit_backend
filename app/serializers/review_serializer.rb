class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment, :review_photo
  has_one :user
  belongs_to :salon

  # def review_photo
  #   if object.review_photo.attached?
  #     {
  #       url: rails_blob_url(object.review_photo)
  #     }
  #   end
# end
end
