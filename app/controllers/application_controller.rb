class ApplicationController < ActionController::API

    def authenticate
        @current_user = User.find_by(id: params[:user_id])
        render json: {errors: ["Not authorized"]}, status: :unauthorized unless @current_user
    end
end
