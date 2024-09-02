class Flight < ApplicationRecord
  belongs_to :departure_airport, class_name: "Airport", foreign_key: :departure_id
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: :arrival_id
  has_many :bookings
  has_many :passengers, through: :bookings

  validates :datetime, presence: true
  validates :duration, presence: true

  scope :departing_from, ->(id) { where(departure_id: id) }
  scope :arriving_to, ->(id) { where(arrival_id: id) }
  scope :at_date, ->(date) { all.select { |flight| flight.datetime.to_date == date } }
  scope :exact_matches, ->(date, dep_id, arr_id) { departing_from(dep_id).arriving_to(arr_id).at_date(date) }

  def date
    "#{datetime.strftime("%I:%M %p")}"
  end
end
