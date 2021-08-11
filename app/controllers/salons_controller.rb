class SalonsController < ApplicationController

    def index
        salons = Salon.all
        render json: salons
    end

    def show
        salon = Salon.find_by(id: params[:id])
        render json: salon.with_services_reviews
    end
end
