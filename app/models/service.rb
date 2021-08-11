class Service < ApplicationRecord
  belongs_to :salon

  validates :service, presence: {message: "Please enter service"}
  validates price:, presence: {message: "Please enter price"}
end
