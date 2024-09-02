class CreateBookings < ActiveRecord::Migration[7.2]
  def change
    create_table :bookings do |t|
      t.references :passengers, null: false, foreign_key: true
      t.references :flights, null: false, foreign_key: true

      t.timestamps
    end
  end
end
