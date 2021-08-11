class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :salon

  validates :date, presence: {message: "date must be present"}
  validates start_time: {message: "start time must be present"}
  # validates end_time: {message: "end time must be present"}
end
