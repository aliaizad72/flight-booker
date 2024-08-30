class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map(&:city)
    @dates = Flight.all.order(datetime: :asc).map { |flight| flight.datetime.strftime("%d-%m-%Y") }.uniq
  end

  private

  def search_params
    params.require(:index).permit(:departure_airport, :arrival_airport, :date)
  end
end
