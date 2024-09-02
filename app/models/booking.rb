class Booking < ApplicationRecord
  has_m :passenger
  belongs_to :flight

  accepts_nested_attributes_for :passenger
end
