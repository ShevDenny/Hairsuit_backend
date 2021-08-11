class ServicesController < ApplicationController

    def create
        service = Service.create(service_params)

        if service.valid?
            render json: service.salon, status: 201
        else
            render json: {errors: service.errors.full_messages}, status: 422
        end
    end

    private

    def service_params
        params.permit(:name, :price, :salon_id)
    end
end
