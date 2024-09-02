class BookingsController < ApplicationController
  def index
    @flight = Flight.find_by(id: params[:flight_id])
    @booking = Booking.new
    params[:tix_num].to_i.times { @booking.build_passenger }
  end

  def create
    @passengers = []
    bookings_param[:passenger].each do |pass|
      passenger = Passenger.create(pass)
      @passengers << passenger
    end

    @bookings = @passengers.map { |passenger| Booking.new(flight_id: bookings_param[:flight_id], passenger_id: passenger.id) }
    if @bookings.all?(&:valid?)
      @bookings.each { |booking| booking.save }
    else
      render :index, status: 422
    end
  end

  private

  def bookings_param
    params.require(:booking).permit(:flight_id, passenger: [ :first_name, :last_name, :email ])
  end
end
