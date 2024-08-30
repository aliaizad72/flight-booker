class Airport < ApplicationRecord
  has_many :departing_flight, class_name: "Flight", foreign_key: :departure_id, dependent: :destroy
  has_many :arriving_flight, class_name: "Flight", foreign_key: :arrival_id, dependent: :destroy

  validates :code, presence: true, length: { maximum: 3 }
end
