class PassengerMailer < ApplicationMailer
  default from: "confirmation@flightbooker.com"

  def confirm_email
    @passenger = params[:passenger]
    @booking = params[:booking]
    mail(to: @passenger.email, subject: "Confirmation for Booking #{@booking.id}")
  end
end
