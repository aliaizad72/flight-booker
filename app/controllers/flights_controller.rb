class FlightsController < ApplicationController
  def index
    @departure_airports = Airport.all.select { |airport| airport.departing_flight.any? }.map(&:code)
    @arrival_airports = Airport.all.select { |airport| airport.arriving_flight.any? }.map(&:code)
  end
end
