class UsersController < ApplicationController

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user, status: 201
        else
            render json: {errors: user.errors.full_messages}, status: 422
        end
    end

    private

    def user_params
        params.permit(:name, :user_name, :password_digest, :email, :admin)
    end
end
