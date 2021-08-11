class ServiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
  has_one :salon
end
