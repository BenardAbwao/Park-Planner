class ReservationsController < ApplicationController
    def index
        reservations = Reservation.all
        render json: reservations
    end

    def show 
        reservation = Reservation.find_by(id: params[:id])
        render json: reservation
    end

    def create
        reservation = Reservation.create(reservation_params)
        render json: reservation
    end

    def update
        reservation = Reservation.find_by(id: params[:id])
        if reservation
          reservation.update(reservation_params)
          render json: reservation
        else
          render json: { error: "Reservation not found" }, status: :not_found
        end
    end

    def destroy
        reservation = Reservation.find_by(id: params[:id])
        if reservation
        reservation.destroy
            head :no_content
        else
            render json: { error: "Reservation not found" }, status: :not_found
        end
    end

    private

    def reservation_params
        params.permit(:user_id, :start_date, :end_date)
    end
end
