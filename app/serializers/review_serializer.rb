class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :rating, :comment
  has_one :salon
  has_one :user
end
