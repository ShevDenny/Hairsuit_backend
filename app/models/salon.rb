class Salon < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :users, through: :appointments
    has_many :reviews
    has_many :services
end
