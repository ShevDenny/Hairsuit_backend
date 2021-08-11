class SalonSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :specialize_in
end
