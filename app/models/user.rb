class User < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :salons, through: :appointments
    has_many :reviews

    validates :user_name, :password_digest, presence: {message: " must be present" }
    validates :user_name, uniqueness: {message: "already taken"}
    validates :email, uniqueness: {message: "already been used"}
    validates :password_digest, length: {in: 6..10, message: "must be between 6-10 characters"}
end
