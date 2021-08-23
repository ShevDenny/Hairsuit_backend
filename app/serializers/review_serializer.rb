class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment
  has_one :salon
  has_one :user

  # def review_photo
  #   if object.review_photo.attached?
  #     {
  #       url: rails_blob_url(object.review_photo)
  #     }
  #   end
# end
end
