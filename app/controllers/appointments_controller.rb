class AppointmentsController < ApplicationController

    def index
        appointments = Appointment.all
        render json: appointments
    end

    def create
        appointment = Appointment.create(appointment_params)

        if appointment.valid?
            render json: appointment, status: 201
        else
            render json: {errors: appointment.errors.full_messages}, status: 422
        end
    end

    def show
        appointment = Appointment.find_by(id: params[:id])

        if appointment
            render json: appointment.user_salon_info
        else
            render json: {error: "Appointment not found"}
        end
    end

    def destroy
        appointment = Appointment.find_by(id: params[:id])

        if appointment
            appointment.destroy
            head :no_content
        else 
            render json: {error: "Appointment not found"}, status: 404
        end    
    end

    private

    def appointment_params
        params.permit(:date, :start_time, :end_time, :description, :user_id, :salon_id)
    end
end
