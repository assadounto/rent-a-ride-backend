class Api::V1::BookingsController < ApiController
    before_action :authorize_request
    
   def index
        user = @current_user
        booking = user.bookings
        if booking
            render json: booking.to_json(include: [:car]), status: 200
        end
    end

   def new
   end
   def create
        booking = Booking.new(booking_params)
        booking.user=@current_user
        if booking.save
             render json: booking, status: 200
        else
             render json: booking.errors, status: :unprocessable_entity
        end
   end

    def destroy
        booking = Booking.find_by(id: params[:id])
        if booking
            booking.destroy
            render json: 'Booking deleted successfully'
        else
            render json: {
                error: 'Booking Not Found'
            }
        end
    end

    private

    def booking_params
        params.permit(:car_id, :start_date, :end_date, :city)
    end
end