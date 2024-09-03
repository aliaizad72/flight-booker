class RenameForeignKeysBookingsPassenger < ActiveRecord::Migration[7.2]
  def change
    rename_column :bookings_passengers, :passengers_id, :passenger_id
    rename_column :bookings_passengers, :bookings_id, :booking_id
  end
end
