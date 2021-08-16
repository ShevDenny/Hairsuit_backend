class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :salon

  validates :date, presence: {message: "must be present"}
  validates :start_time, presence: {message: "must be present"}
  # validates end_time: {message: "end time must be present"}

  def user_salon_info
    {
      id:self.id,
      date: self.date,
      start_time: self.start_time,
      end_time: self.start_time,
      description: self.description,
      user: 
        {
          user_id: self.user.id,
          name: self.user.name,
          email: self.user.email
        }, 
      salon: 
        {
          salon_id: self.salon.id,
          name: self.salon.name,
          location: self.salon.location
        }
    }
  end
end
