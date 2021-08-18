class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_name, :email, :admin

  has_many :appointments
  
end
