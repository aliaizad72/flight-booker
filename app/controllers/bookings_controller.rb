class BookingsController < ApplicationController
  def index
    @flight = Flight.find_by(id: params[:flight_id])
    @booking = @flight.bookings.new
    params[:tix_num].to_i.times { @booking.passengers.build }
  end

  def create
    @flight = Flight.find_by(id: bookings_param[:flight_id])
    @booking = @flight.bookings.build
    @booking.passengers.build(bookings_param[:passengers_attributes].values)

    if @booking.save
      redirect_to booking_path(@booking.id)
    else
      flash[:alert] = "Fill in the forms properly!"
      redirect_back fallback_location: bookings_path
    end
  end

  def show
    @booking = Booking.find_by(id: params[:id])
    @flight = @booking.flight
    @booking_passengers = BookingsPassenger.where(booking_id: @booking.id)
  end

  private

  def bookings_param
    params.require(:booking).permit(:flight_id, passengers_attributes: [ :first_name, :last_name, :email ])
  end
end
