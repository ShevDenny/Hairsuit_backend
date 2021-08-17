class ReviewsController < ApplicationController

    def index
        reviews = Review.all
        render json: reviews
    end

    def create
        review= Review.create(review_params)
        if review.valid?
            render json: review, status: 201
        else
            render json: {errors: review.errors.full_messages}, status: 422
        end
    end

    def update
        review = Review.find_by(id:params[:id])

        review.update(review_params)

        render json: review
    end

    private

    def review_params
        params.permit(:rating, :comment, :user_id, :salon_id)
    end
end
