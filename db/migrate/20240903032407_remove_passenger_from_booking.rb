class RemovePassengerFromBooking < ActiveRecord::Migration[7.2]
  def change
    remove_column :bookings, :passenger_id
  end
end
