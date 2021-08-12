class User < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :salons, through: :appointments
    has_many :reviews

    validates :user_name, :password_digest, presence: {message: " must be present" }
    validates :user_name, uniqueness: {message: "already taken"}
    validates :email, uniqueness: {message: "already been used"}
    validates :password_digest, length: {in: 6..10, message: "must be between 6-10 characters"}

    def with_appointments
        {
            id: self.id,
            name: self.name,
            user_name: self.user_name,
            password_digest: self.password_digest,
            email: self.email,
            admin: self.admin,
            appointments: self.appointments.map do |appointment|
                {
                    date: appointment.date,
                    start_time: appointment.start_time,
                    end_time: appointment.end_time,
                    description: appointment.description
                }
            end,
            salon: self.salons.map do |salon|
                {
                    
                    name:salon.name,
                    location:salon.location
            
                }
            end
        }
    end
end
