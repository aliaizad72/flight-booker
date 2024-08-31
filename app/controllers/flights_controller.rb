class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map(&:city)
    @dates = Flight.all.order(datetime: :asc).map { |flight| flight.datetime.strftime("%d-%m-%Y") }.uniq

    @departure_id = Airport.find_by(city: params[:departure_airport])
    @arrival_id = Airport.find_by(city: params[:arrival_airport])
    @date = assign_date.to_date

    @exact_matches = Flight.exact_matches(@date, @departure_id, @arrival_id)
    @departure_results = Flight.departing_from(@departure_id)
    @arrival_results = Flight.arriving_to(@arrival_id)
    @date_results = Flight.at_date(@date)
  end

  private

  def search_params
    params.require(:index).permit(:departure_airport, :arrival_airport, :date)
  end

  def assign_date
    if params[:date].nil?
      Time.now
    else
      params[:date]
    end
  end
end
