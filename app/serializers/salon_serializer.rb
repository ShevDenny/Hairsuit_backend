class SalonSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :specialize_in, :description, :image
end
