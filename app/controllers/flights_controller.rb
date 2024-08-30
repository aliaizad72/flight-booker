class FlightsController < ApplicationController
  def index
    @airports = Airport.all.map(&:city)
  end
end
