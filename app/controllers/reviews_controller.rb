class ReviewsController < ApplicationController
    
    before_action :authenticate, only: [:create, :update, :destroy]

    
    def index
        reviews = Review.all
        render json: reviews
    end

    def create
       
        review = Review.create(review_params)
        if review.valid?
            render json: review, status: 201
        else
            render json: {errors: review.errors.full_messages}, status: 422
        end
    end

    def show
        review = Review.find_by(id: params[:id])
        review_photo = rails_blob_path(review.review_photo)

        if review
            # render json: review
            render json: {review: review, review_photo: review_photo}
        else
            render json: {error: "Review not found"}, status: 404
        end

    end

    def update
        review = Review.find_by(id:params[:id])

        review.update(review_photo: params[:review_photo])
        review_photo = rails_blob_path(review.review_photo)
        # review.update(review_photo: review_photo)

        render json: {review: review, review_photo: review_photo}
    end

    def destroy
        review = Review.find_by(id:params[:id])

        if review
            review.destroy
            head :no_content
        else 
            render json: {error: "Review not found"}, status: 404
        end 

    end

    private

    def review_params
        params.require(:review).permit(:comment, :rating, :review_photo, :user_id, :salon_id)
    end
end
