class ApplicationController < ActionController::API

    def authenticate
       
        auth_header = request.headers["Authorization"]
        token = auth_header.split.last
        payload = JWT.decode(token, 'my_secret', true, { algorithm: 'HS256'})[0]
        @current_user = User.find_by(id: payload["user_id"])
    rescue
        render json: {errors: ["Not Authorized"]}, status: :unauthorized
    end
end
