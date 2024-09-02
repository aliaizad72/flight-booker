class Passenger < ApplicationRecord
  has_many :bookings
  has_many :flights, through: :bookings

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
end
