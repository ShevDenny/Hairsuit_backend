class Salon < ApplicationRecord
    has_many :appointments, dependent: :destroy
    has_many :users, through: :appointments
    has_many :reviews, dependent: :destroy
    has_many :services, dependent: :destroy

    def with_services_reviews
        {
            id: self.id,
            name: self.name,
            location: self.location,
            specialize_in: self.specialize_in,
            description: self.description,
            image: self.image,
            services: self.services.map do |service|
                {
                    id: service.id,
                    name: service.name,
                    price: service.price
                }
            end,
            reviews: self.reviews.map do |review|
                {
                    id: review.id,
                    rating: review.rating,
                    comment: review.comment,
                    user_id: review.user.id,
                    review_photo: review.review_photo
                }
            end
        }

    end
end
