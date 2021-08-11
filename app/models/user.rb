class User < ApplicationRecord
    has_many :appointments
    has_many :salons, through: :appointments
    has_many :reviews

    validates :user_name, :password_digest, presence: {message: " must be present" }
    validates :user_name, uniqueness: {message: "already taken"}
    validates :email, uniqueness: {message: "already been used"}
    validates :password_digest, length: {in: 6..10 }
end
