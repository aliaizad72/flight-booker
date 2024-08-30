class AddDatetimeAndDurationToFlights < ActiveRecord::Migration[7.2]
  def change
    add_column :flights, :datetime, :datetime
  end
end
