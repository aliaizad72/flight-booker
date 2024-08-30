class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map(&:city)
    @dates = Flight.all.order(datetime: :asc).map { |flight| flight.datetime.strftime("%d-%m-%Y") }.uniq

    @departure_id = Airport.find_by(city: params[:departure_airport])
    @arrival_id = Airport.find_by(city: params[:arrival_airport])

    @results = Flight.where(departure_id: @departure_id, arrival_id: @arrival_id)
  end

  private

  def search_params
    params.require(:index).permit(:departure_airport, :arrival_airport, :date)
  end
end
