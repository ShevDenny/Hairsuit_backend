class ReviewsController < ApplicationController
    before_action :authenticate, only: [:index, :show, :create, :update, :destroy]

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

        if review
            render json: review
        else
            render json: {error: "Review not found"}, status: 404
        end

    end

    def update
        review = Review.find_by(id:params[:id])

        review.update(review_params)

        render json: review
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
        params.require(:review).permit(:comment, :rating, :cover_picture, :user_id, :salon_id)
    end
end
