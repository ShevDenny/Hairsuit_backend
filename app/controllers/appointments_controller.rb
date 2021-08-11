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

    private

    def appointment_params
        params.permit(:date, :start_time, :end_time, :description, :user_id, :salon_id)
    end
end
