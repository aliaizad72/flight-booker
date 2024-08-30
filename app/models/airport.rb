class Airport < ApplicationRecord
  has_many :departing_flight, class_name: "Flight", foreign_key: :departure_id
  has_many :arriving_flight, class_name: "Flight", foreign_key: :arrival_id

  validates :code, presence: true, length: { maximum: 3 }
end
