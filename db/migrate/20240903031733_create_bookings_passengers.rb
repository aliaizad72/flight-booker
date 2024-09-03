class CreateBookingsPassengers < ActiveRecord::Migration[7.2]
  def change
    create_table :bookings_passengers do |t|
      t.references :passengers, null: false, foreign_key: true
      t.references :bookings, null: false, foreign_key: true
      t.timestamps
    end
  end
end
