class ReviewsController < ApplicationController
    
    before_action :authenticate, only: [:create, :update, :destroy]

    
    def index
        reviews = Review.all
        rev_with_photo = reviews.map do |rev| 
            {
                review: {
                    id: rev.id,
                    rating: rev.rating,
                    comment: rev.comment,
                    user_id: rev.user_id,
                    salon_id: rev.salon_id
                },
                user: rev.user,
                salon: rev.salon,
                review_photo: rails_blob_path(rev.review_photo)
            }
        end 

        render json: rev_with_photo
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
            render json: {review: review, review_photo: review_photo, user: review.user, salon: review.salon}
        else
            render json: {error: "Review not found"}, status: 404
        end

    end

    def update
        review = Review.find_by(id: params[:id])

        review.update(review_photo: params[:review_photo])
        review_photo = rails_blob_path(review.review_photo)
        # review.update(review_photo: review_photo)

        render json: {review: review, review_photo: review_photo, user: review.user, salon: review.salon}
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
        params.require(:review).permit(:comment, :user_id, :salon_id)
    end
end
