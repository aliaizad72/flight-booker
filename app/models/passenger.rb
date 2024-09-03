class Passenger < ApplicationRecord
  has_many :bookings_passengers
  has_many :bookings, through: :bookings_passengers

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
