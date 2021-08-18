class AppointmentSerializer < ActiveModel::Serializer
  attributes :id, :date, :start_time, :end_time, :description, :salon
  has_one :user
  has_one :salon
end
