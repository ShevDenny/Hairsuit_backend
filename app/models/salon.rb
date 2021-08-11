class Salon < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :users, through: :appointments
    has_many :reviews
    has_many :services

    def with_services_reviews
        {
            id: self.id,
            name: self.name,
            location: self.location,
            specialize_in: self.specialize_in,
            services: self.services.map do |service|
                {
                    name: service.name,
                    price: service.price,
                }
            end,
            reviews: self.reviews.map do |review|
                {
                    rating: review.rating,
                    comment: review.comment
                }
            end
        }

    end
end
