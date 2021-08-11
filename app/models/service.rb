class Service < ApplicationRecord
  belongs_to :salon

  validates :name, presence: {message: "must be present"}
  validates :price, presence: {message: "must be present"}
end
