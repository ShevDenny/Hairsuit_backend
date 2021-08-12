class UsersController < ApplicationController

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user, status: 201
        else
            render json: {errors: user.errors.full_messages}, status: 422
        end
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user.with_appointments
        else
            render json: {error: "User not found"}, status: 404
        end
    end

    private

    def user_params
        params.permit(:name, :user_name, :password_digest, :email, :admin)
    end
end
