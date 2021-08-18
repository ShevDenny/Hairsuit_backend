class UsersController < ApplicationController
    before_action :authenticate, only: [:me, :update]

    def index
        users = User.all
        render json: users
    end

    def create
        user = User.create(user_params)
        if user.valid?
            token = JWT.encode({ user_id: user.id }, 'my_secret', 'HS256')
            render json: { user: UserSerializer.new(user), token: token }, status: 201
        else
            render json: {errors: user.errors.full_messages}, status: 422
        end
    end

    def login
        user = User.find_by(user_name: params[:user][:user_name])
      
       
        if user && user.authenticate(params[:user][:password])
            token = JWT.encode({ user_id: user.id }, 'my_secret', 'HS256')
            render json: { user: UserSerializer.new(user), token: token }, status: 201
        else
            render json: { errors: ['incorrect username and/or password']}, status: 401
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

    def me
        render json: @current_user
    end

    def update
        @current_user.update(user_params)
        render json: @current_user
    end


    private

    def user_params
        params.require(:user).permit(:name, :user_name, :password, :email, :admin)
    end
end
